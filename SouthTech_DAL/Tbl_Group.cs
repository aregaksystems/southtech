//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SouthTech_DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tbl_Group
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_Group()
        {
            this.Tbl_Contact = new HashSet<Tbl_Contact>();
        }
    
        public int fld_Group_ID { get; set; }
        public string fld_Group_Title { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_Contact> Tbl_Contact { get; set; }
    }
}