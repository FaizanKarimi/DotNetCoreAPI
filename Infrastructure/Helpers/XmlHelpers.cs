using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Text;
using System.Xml;
using System.Xml.Linq;
using Infrastructure.APIResponseModels;

namespace Infrastructure.Helpers
{
    /// <summary>
    /// XmlHelpers class
    /// </summary>
    public static class XmlHelpers
    {
        /// <summary>
        /// Serializes the specified object.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="obj">The object.</param>
        /// <returns>
        /// the string
        /// </returns>
        public static string Serialize<T>(object obj)
        {
            string buffer = string.Empty;

            using (StringWriter stringWriter = new StringWriter())
            {
                using (XmlTextWriter xmlTextWriter = new XmlTextWriter(stringWriter) { Formatting = Formatting.Indented })
                {
                    DataContractSerializer dataContractSerializer = new DataContractSerializer(typeof(T));
                    dataContractSerializer.WriteObject(xmlTextWriter, obj);
                    buffer = XmlHelpers.RemoveAllNamespaces(stringWriter.GetStringBuilder().ToString());
                }
            }

            return buffer;
        }

        /// <summary>
        /// Serializes the specified object.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="obj">The object.</param>
        /// <param name="knownTypes">The known types.</param>
        /// <returns>
        /// the string
        /// </returns>
        public static string Serialize<T>(T obj, IEnumerable<Type> knownTypes)
        {
            string buffer = string.Empty;

            using (StringWriter stringWriter = new StringWriter())
            {
                using (XmlTextWriter xmlTextWriter = new XmlTextWriter(stringWriter) { Formatting = Formatting.Indented })
                {
                    DataContractSerializer dataContractSerializer = new DataContractSerializer(typeof(T), knownTypes);
                    dataContractSerializer.WriteObject(xmlTextWriter, obj);
                    buffer = XmlHelpers.RemoveAllNamespaces(stringWriter.GetStringBuilder().ToString());
                }
            }

            return buffer;
        }

        /// <summary>
        /// Deserializes the specified XML.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="xml">The XML.</param>
        /// <returns>
        /// the object
        /// </returns>
        public static T Deserialize<T>(string xml)
        {
            using (MemoryStream memoryStream = new MemoryStream())
            {
                byte[] data = Encoding.UTF8.GetBytes(xml);
                memoryStream.Write(data, 0, data.Length);
                memoryStream.Position = 0;
                DataContractSerializer dataContractSerializer = new DataContractSerializer(typeof(T));
                return (T)dataContractSerializer.ReadObject(memoryStream);
            }
        }

        /// <summary>
        /// Deserializes the specified XML.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="xml">The XML.</param>
        /// <param name="knownTypes">The known types.</param>
        /// <returns>
        /// the object
        /// </returns>
        public static T Deserialize<T>(string xml, IEnumerable<Type> knownTypes)
        {
            using (MemoryStream memoryStream = new MemoryStream())
            {
                byte[] data = Encoding.UTF8.GetBytes(xml);
                memoryStream.Write(data, 0, data.Length);
                memoryStream.Position = 0;
                DataContractSerializer dataContractSerializer = new DataContractSerializer(typeof(T), knownTypes);
                return (T)dataContractSerializer.ReadObject(memoryStream);
            }
        }

        /// <summary>
        /// Gets the responses known types.
        /// </summary>
        /// <returns>
        /// the list of the response known types for xml serialization
        /// </returns>
        public static List<Type> GetResponsesKnownTypes()
        {
            List<Type> knownTypes = GetSingleKnownTypes(typeof(IBaseResponse).Assembly).ToList();
            List<Type> knownListTypes = GetListKnownTypes(knownTypes).ToList();

            knownTypes.AddRange(knownListTypes);

            return knownTypes;
        }

        /// <summary>
        /// Gets the single known types.
        /// </summary>
        /// <param name="assemblies">The assemblies.</param>
        /// <returns>
        /// the known single types for xml serialization
        /// </returns>
        private static IEnumerable<Type> GetSingleKnownTypes(params Assembly[] assemblies)
        {
            foreach (Assembly assembly in assemblies)
            {
                foreach (Type type in assembly.GetTypes())
                {
                    if (!type.IsAbstract && typeof(IBaseResponse).IsAssignableFrom(type))
                    {
                        yield return type;
                    }
                }
            }
        }

        /// <summary>
        /// Gets the list known types.
        /// </summary>
        /// <param name="types">The types.</param>
        /// <returns>
        /// the known list type for xml serialization
        /// </returns>
        private static IEnumerable<Type> GetListKnownTypes(IEnumerable<Type> types)
        {
            foreach (Type type in types)
            {
                if (!type.IsAbstract && typeof(IBaseResponse).IsAssignableFrom(type))
                {
                    yield return typeof(List<>).MakeGenericType(type);
                }
            }
        }

        /// <summary>
        /// Removes all namespaces.
        /// </summary>
        /// <param name="xmlDocument">The XML document.</param>
        /// <returns>
        /// the xml
        /// </returns>
        private static string RemoveAllNamespaces(string xmlDocument)
        {
            XElement xmlDocumentWithoutNs = RemoveAllNamespaces(XElement.Parse(xmlDocument));

            return xmlDocumentWithoutNs.ToString();
        }

        /// <summary>
        /// Removes all namespaces.
        /// </summary>
        /// <param name="xmlDocument">The XML document.</param>
        /// <returns>
        /// the xelement
        /// </returns>
        private static XElement RemoveAllNamespaces(XElement xmlDocument)
        {
            if (!xmlDocument.HasElements)
            {
                XElement xElement = new XElement(xmlDocument.Name.LocalName);
                xElement.Value = xmlDocument.Value;

                foreach (XAttribute attribute in xmlDocument.Attributes())
                {
                    xElement.Add(attribute);
                }

                return xElement;
            }

            return new XElement(xmlDocument.Name.LocalName, xmlDocument.Elements().Select(element => RemoveAllNamespaces(element)));
        }
    }
}