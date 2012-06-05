.class public Lcom/motorola/android/xmp/impl/ParameterAsserts;
.super Ljava/lang/Object;
.source "ParameterAsserts.java"

# interfaces
.implements Lcom/motorola/android/xmp/XMPConst;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static assertArrayName(Ljava/lang/String;)V
    .locals 3
    .parameter "arrayName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Empty array name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 61
    :cond_1
    return-void
.end method

.method public static assertImplementation(Lcom/motorola/android/xmp/XMPMeta;)V
    .locals 3
    .parameter "xmp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 160
    if-nez p0, :cond_0

    .line 162
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 165
    :cond_0
    instance-of v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "The XMPMeta-object is not compatible with this implementation"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 170
    :cond_1
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 141
    if-nez p0, :cond_0

    .line 143
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 145
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Parameter must not be null or empty"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 149
    :cond_1
    return-void
.end method

.method public static assertPrefix(Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Empty prefix"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 103
    :cond_1
    return-void
.end method

.method public static assertPropName(Ljava/lang/String;)V
    .locals 3
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Empty property name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 75
    :cond_1
    return-void
.end method

.method public static assertSchemaNS(Ljava/lang/String;)V
    .locals 3
    .parameter "schemaNS"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Empty schema namespace URI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 89
    :cond_1
    return-void
.end method

.method public static assertSpecificLang(Ljava/lang/String;)V
    .locals 3
    .parameter "specificLang"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 113
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Empty specific language"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 117
    :cond_1
    return-void
.end method

.method public static assertStructName(Ljava/lang/String;)V
    .locals 3
    .parameter "structName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 127
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Empty array name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 131
    :cond_1
    return-void
.end method
