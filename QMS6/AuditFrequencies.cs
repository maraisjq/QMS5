//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QMS6
{
    using System;
    using System.Collections.Generic;
    
    public partial class AuditFrequencies
    {
        public int Id { get; set; }
        public string Frequency { get; set; }
    
        public virtual IRMERAudits IRMERAudit { get; set; }
    }
}