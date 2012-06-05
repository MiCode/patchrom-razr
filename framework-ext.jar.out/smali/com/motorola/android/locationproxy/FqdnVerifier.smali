.class public Lcom/motorola/android/locationproxy/FqdnVerifier;
.super Ljava/lang/Object;
.source "FqdnVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "FqdnVerifier"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .locals 12
    .parameter "cert"

    .prologue
    .line 38
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 39
    .local v6, subjectAltList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 41
    .local v1, c:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    if-eqz v1, :cond_0

    .line 46
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 47
    .local v0, aC:Ljava/util/List;,"Ljava/util/List<*>;"
    move-object v4, v0

    .line 48
    .local v4, list:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 49
    .local v8, type:I
    packed-switch v8, :pswitch_data_0

    .line 63
    :pswitch_0
    const-string v9, "FqdnVerifier"

    const-string v10, "We don\'t care about this type."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 42
    .end local v0           #aC:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v8           #type:I
    :catch_0
    move-exception v2

    .line 43
    .local v2, cpe:Ljava/security/cert/CertificateParsingException;
    const-string v9, "FqdnVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing certificate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v2           #cpe:Ljava/security/cert/CertificateParsingException;
    .restart local v0       #aC:Ljava/util/List;,"Ljava/util/List<*>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .restart local v8       #type:I
    :pswitch_1
    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    .end local v0           #aC:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v5           #s:Ljava/lang/String;
    .end local v8           #type:I
    :cond_0
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 69
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/String;

    .line 70
    .local v7, subjectAlts:[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 73
    .end local v7           #subjectAlts:[Ljava/lang/String;
    :goto_2
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 9
    .parameter "fqdn"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, cns:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 80
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 81
    .local v4, s:Ljava/lang/String;
    const-string v6, "FqdnVerifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lcom/motorola/android/locationproxy/FqdnVerifier;->getSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, subjectAlts:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 86
    move-object v0, v5

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 87
    .restart local v4       #s:Ljava/lang/String;
    const-string v6, "FqdnVerifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, v1, v5}, Lcom/motorola/android/locationproxy/FqdnVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16
    .parameter "fqdn"
    .parameter "cns"
    .parameter "subjectAlts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 96
    .local v11, names:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v13, v0

    if-lez v13, :cond_0

    const/4 v13, 0x0

    aget-object v13, p2, v13

    if-eqz v13, :cond_0

    .line 97
    const/4 v13, 0x0

    aget-object v13, p2, v13

    invoke-virtual {v11, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    if-eqz p3, :cond_2

    .line 100
    move-object/from16 v1, p3

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v12, v1, v6

    .line 101
    .local v12, subjectAlt:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 102
    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v12           #subjectAlt:Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 108
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Certificate for <"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, msg:Ljava/lang/String;
    new-instance v13, Ljavax/net/ssl/SSLException;

    invoke-direct {v13, v10}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 113
    .end local v10           #msg:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v2, buf:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, hostName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 119
    .local v9, match:Z
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 121
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, cn:Ljava/lang/String;
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 124
    const-string v13, " <"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const/16 v13, 0x3e

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 128
    const-string v13, " OR"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_5
    const-string v13, "*."

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v13, 0x2e

    invoke-virtual {v3, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    if-ltz v13, :cond_7

    invoke-static {v3}, Lorg/apache/http/conn/ssl/AbstractVerifier;->acceptableCountryWildcard(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-static/range {p1 .. p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v4, 0x1

    .line 139
    .local v4, doWildcard:Z
    :goto_1
    if-eqz v4, :cond_8

    .line 140
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    .line 144
    :goto_2
    if-eqz v9, :cond_4

    .line 148
    .end local v3           #cn:Ljava/lang/String;
    .end local v4           #doWildcard:Z
    :cond_6
    if-nez v9, :cond_9

    .line 149
    new-instance v13, Ljavax/net/ssl/SSLException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hostname in certificate didn\'t match: <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "> !="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 134
    .restart local v3       #cn:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 142
    .restart local v4       #doWildcard:Z
    :cond_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    .line 151
    .end local v3           #cn:Ljava/lang/String;
    .end local v4           #doWildcard:Z
    :cond_9
    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5
    .parameter "fqdn"
    .parameter "session"

    .prologue
    const/4 v3, 0x0

    .line 155
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 156
    .local v0, certs:[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 157
    .local v2, x509:Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lcom/motorola/android/locationproxy/FqdnVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v3, 0x1

    .line 160
    .end local v0           #certs:[Ljava/security/cert/Certificate;
    .end local v2           #x509:Ljava/security/cert/X509Certificate;
    :goto_0
    return v3

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljavax/net/ssl/SSLException;
    goto :goto_0
.end method
