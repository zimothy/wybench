define ClassFile as {
    int minor_version,
    int major_version,
    {ClassModifier} modifiers,
    class_t type,
    class_t super,
    [class_t] interfaces,
    [FieldInfo] fields
}

define FieldInfo as {
    {FieldModifier} modifiers,
    string name,
    jvm_t type    
}

define ACC_PUBLIC as 0x0001
define ACC_PRIVATE as 0x0002
define ACC_PROTECTED as 0x0004
define ACC_STATIC as 0x0008
define ACC_FINAL as  0x0010
define ACC_SUPER as  0x0020
define ACC_VOLATILE as 0x0040
define ACC_TRANSIENT as 0x0080
define ACC_INTERFACE as 0x0200
define ACC_ABSTRACT as 0x0400
define ACC_SYNTHETIC as 0x1000
define ACC_ANNOTATION as 0x2000
define ACC_ENUM as 0x4000

define ClassModifier as {
    ACC_PUBLIC,
    ACC_FINAL,
    ACC_SUPER,
    ACC_INTERFACE,
    ACC_ABSTRACT,
    ACC_ANNOTATION,
    ACC_ENUM
}

define FieldModifier as {
    ACC_PUBLIC, 
    ACC_PRIVATE,
    ACC_PROTECTED,
    ACC_STATIC,
    ACC_FINAL,
    ACC_VOLATILE,
    ACC_TRANSIENT,
    ACC_SYNTHETIC,
    ACC_ENUM
}
