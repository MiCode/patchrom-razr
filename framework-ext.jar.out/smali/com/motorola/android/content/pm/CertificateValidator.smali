.class public Lcom/motorola/android/content/pm/CertificateValidator;
.super Ljava/lang/Object;
.source "CertificateValidator.java"


# static fields
.field private static final MANUFACTURER_ROOTCERTS:Ljava/lang/String; = "/system/etc/security/mancacerts.zip"

.field private static final OPERATOR_ROOTCERTS:Ljava/lang/String; = "/system/etc/security/oprcacerts.zip"

.field public static final PKG_NON_PRIVILEGED:I = 0x0

.field public static final PKG_PRIVILEGED_MANUFACTURER:I = 0x1

.field public static final PKG_PRIVILEGED_OPERATOR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CertificateValidator"

.field private static mCertFactory:Ljava/security/cert/CertificateFactory;

.field private static mCertPathValidator:Ljava/security/cert/CertPathValidator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArrayListFromArray([Ljava/security/cert/Certificate;)Ljava/util/ArrayList;
    .locals 5
    .parameter "certChain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v2, certsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 332
    .local v1, c:Ljava/security/cert/Certificate;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    .end local v1           #c:Ljava/security/cert/Certificate;
    :cond_0
    return-object v2
.end method

.method private static getValidatorParametersFromZip(Ljava/lang/String;)Ljava/security/cert/PKIXParameters;
    .locals 14
    .parameter "caCerts"

    .prologue
    const/4 v11, 0x0

    .line 145
    const/4 v4, 0x0

    .line 147
    .local v4, validatorParams:Ljava/security/cert/PKIXParameters;
    const/4 v8, 0x0

    .line 149
    .local v8, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 151
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .local v9, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 152
    .local v3, trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 153
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 154
    sget-object v12, Lcom/motorola/android/content/pm/CertificateValidator;->mCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/zip/ZipEntry;

    invoke-virtual {v9, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 156
    .local v6, x509Cert:Ljava/security/cert/X509Certificate;
    invoke-static {v6}, Lcom/motorola/android/content/pm/CertificateValidator;->isCertValid(Ljava/security/cert/X509Certificate;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 157
    new-instance v10, Ljava/security/cert/TrustAnchor;

    const/4 v12, 0x0

    invoke-direct {v10, v6, v12}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .line 164
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3           #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .end local v6           #x509Cert:Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v7

    move-object v8, v9

    .line 165
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .local v7, ze:Ljava/util/zip/ZipException;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_2
    const-string v10, "CertificateValidator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not exist or is empty"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    if-eqz v8, :cond_1

    .line 176
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    move-object v5, v11

    .line 182
    .end local v7           #ze:Ljava/util/zip/ZipException;
    :goto_3
    return-object v5

    .line 161
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3       #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_4
    new-instance v5, Ljava/security/cert/PKIXParameters;

    invoke-direct {v5, v3}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 162
    .end local v4           #validatorParams:Ljava/security/cert/PKIXParameters;
    .local v5, validatorParams:Ljava/security/cert/PKIXParameters;
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v5, v10}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 175
    if-eqz v9, :cond_3

    .line 176
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_4
    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    move-object v4, v5

    .line 182
    .end local v5           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #validatorParams:Ljava/security/cert/PKIXParameters;
    goto :goto_3

    .line 178
    .end local v4           #validatorParams:Ljava/security/cert/PKIXParameters;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v5       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "CertificateValidator"

    const-string v11, "Zip closing exception: "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 178
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3           #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .end local v5           #validatorParams:Ljava/security/cert/PKIXParameters;
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v7       #ze:Ljava/util/zip/ZipException;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v10, "CertificateValidator"

    const-string v12, "Zip closing exception: "

    invoke-static {v10, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    .end local v7           #ze:Ljava/util/zip/ZipException;
    :catch_3
    move-exception v2

    .line 168
    .local v2, iape:Ljava/security/InvalidAlgorithmParameterException;
    :goto_5
    :try_start_7
    const-string v10, "CertificateValidator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not contain valid certs"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    if-eqz v8, :cond_4

    .line 176
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    :goto_6
    move-object v5, v11

    .line 180
    goto :goto_3

    .line 178
    :catch_4
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v10, "CertificateValidator"

    const-string v12, "Zip closing exception: "

    invoke-static {v10, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #iape:Ljava/security/InvalidAlgorithmParameterException;
    :catch_5
    move-exception v0

    .line 171
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_7
    :try_start_9
    const-string v10, "CertificateValidator"

    const-string v12, "Cert reading exception: e"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 175
    if-eqz v8, :cond_5

    .line 176
    :try_start_a
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_5
    :goto_8
    move-object v5, v11

    .line 180
    goto :goto_3

    .line 178
    :catch_6
    move-exception v0

    .line 179
    const-string v10, "CertificateValidator"

    const-string v12, "Zip closing exception: "

    invoke-static {v10, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 175
    :goto_9
    if-eqz v8, :cond_6

    .line 176
    :try_start_b
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 180
    :cond_6
    :goto_a
    throw v10

    .line 178
    :catch_7
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v11, "CertificateValidator"

    const-string v12, "Zip closing exception: "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    goto :goto_9

    .end local v4           #validatorParams:Ljava/security/cert/PKIXParameters;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3       #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .restart local v5       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    move-object v4, v5

    .end local v5           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #validatorParams:Ljava/security/cert/PKIXParameters;
    goto :goto_9

    .line 170
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3           #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v0

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    goto :goto_7

    .end local v4           #validatorParams:Ljava/security/cert/PKIXParameters;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3       #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .restart local v5       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v0

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    move-object v4, v5

    .end local v5           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #validatorParams:Ljava/security/cert/PKIXParameters;
    goto :goto_7

    .line 167
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3           #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_a
    move-exception v2

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    goto :goto_5

    .end local v4           #validatorParams:Ljava/security/cert/PKIXParameters;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3       #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .restart local v5       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v2

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    move-object v4, v5

    .end local v5           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #validatorParams:Ljava/security/cert/PKIXParameters;
    goto :goto_5

    .line 164
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3           #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    :catch_c
    move-exception v7

    goto/16 :goto_1

    .end local v4           #validatorParams:Ljava/security/cert/PKIXParameters;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3       #trustAnchorsSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/TrustAnchor;>;"
    .restart local v5       #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_d
    move-exception v7

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    move-object v4, v5

    .end local v5           #validatorParams:Ljava/security/cert/PKIXParameters;
    .restart local v4       #validatorParams:Ljava/security/cert/PKIXParameters;
    goto/16 :goto_1
.end method

.method private static getZipEntryBytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B
    .locals 11
    .parameter "zip"
    .parameter "entry"

    .prologue
    const/4 v7, 0x0

    .line 257
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v6, v7

    .line 289
    :goto_0
    return-object v6

    .line 261
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    .line 262
    .local v1, entryLength:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-eqz v8, :cond_2

    long-to-int v8, v1

    int-to-long v8, v8

    cmp-long v8, v1, v8

    if-eqz v8, :cond_3

    :cond_2
    move-object v6, v7

    .line 263
    goto :goto_0

    .line 266
    :cond_3
    long-to-int v8, v1

    new-array v6, v8, [B

    .line 267
    .local v6, out:[B
    const/4 v4, 0x0

    .line 269
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 271
    const/4 v5, 0x0

    .line 272
    .local v5, offset:I
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v8

    if-lez v8, :cond_5

    array-length v8, v6

    if-ge v5, v8, :cond_5

    .line 273
    array-length v8, v6

    sub-int/2addr v8, v5

    invoke-virtual {v4, v6, v5, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 274
    .local v3, iRead:I
    if-gtz v3, :cond_4

    .line 275
    const-string v8, "CertificateValidator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    move-object v6, v7

    .line 287
    goto :goto_0

    .line 278
    :cond_4
    add-int/2addr v5, v3

    .line 279
    goto :goto_1

    .line 284
    .end local v3           #iRead:I
    :cond_5
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v7

    goto :goto_0

    .line 280
    .end local v5           #offset:I
    :catch_1
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    move-object v6, v7

    .line 287
    goto :goto_0

    .line 283
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 284
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 287
    :goto_4
    throw v7

    .line 285
    .restart local v3       #iRead:I
    .restart local v5       #offset:I
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v3           #iRead:I
    .end local v5           #offset:I
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_3

    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v8

    goto :goto_4
.end method

.method private static isCertChainValid([B)Z
    .locals 8
    .parameter "certChain"

    .prologue
    const/4 v6, 0x0

    .line 294
    :try_start_0
    sget-object v5, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    new-instance v7, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v7, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    invoke-virtual {v5, v7}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 295
    .local v1, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v4

    .line 296
    .local v4, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v4, :cond_0

    move v5, v6

    .line 313
    .end local v1           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v4           #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    :goto_0
    return v5

    .line 299
    .restart local v1       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v4       #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    :cond_0
    invoke-virtual {v4}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, encCerts:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 301
    goto :goto_0

    .line 304
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v7, v5}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-static {v7}, Lcom/motorola/android/content/pm/CertificateValidator;->isCertValid(Ljava/security/cert/X509Certificate;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 306
    goto :goto_0

    .line 309
    .end local v0           #encCerts:Ljava/util/Collection;
    .end local v1           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v3           #it:Ljava/util/Iterator;
    .end local v4           #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    :catch_0
    move-exception v2

    .line 310
    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "CertificateValidator"

    const-string v7, "Cannot obtain certificate from the cert chain"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 311
    goto :goto_0

    .line 313
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v0       #encCerts:Ljava/util/Collection;
    .restart local v1       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v3       #it:Ljava/util/Iterator;
    .restart local v4       #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static isCertValid(Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .parameter "cert"

    .prologue
    const/4 v2, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, cee:Ljava/security/cert/CertificateExpiredException;
    const-string v3, "CertificateValidator"

    const-string v4, "Signing certificate is expired"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    .end local v0           #cee:Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v1

    .line 323
    .local v1, cnyve:Ljava/security/cert/CertificateNotYetValidException;
    const-string v3, "CertificateValidator"

    const-string v4, "Signing certificate is not yet valid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isCertificate(Ljava/util/zip/ZipEntry;)Z
    .locals 6
    .parameter "entry"

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 238
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v4

    .line 242
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, name:Ljava/lang/String;
    const-string v2, "META-INF/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const-string v3, ".DSA"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const-string v3, ".RSA"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v4, v1

    .line 249
    goto :goto_0
.end method

.method private static tryVerifyingCertChainAgainstRoot(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/security/cert/PKIXParameters;)Z
    .locals 11
    .parameter "apk"
    .parameter "entry"
    .parameter "validatorParameters"

    .prologue
    const/4 v7, 0x0

    .line 188
    invoke-static {p1}, Lcom/motorola/android/content/pm/CertificateValidator;->isCertificate(Ljava/util/zip/ZipEntry;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v7

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, certName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2e

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".SF"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, sfName:Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/motorola/android/content/pm/CertificateValidator;->getZipEntryBytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object v5

    .line 196
    .local v5, sfBytes:[B
    if-eqz v5, :cond_0

    .line 200
    invoke-static {p0, p1}, Lcom/motorola/android/content/pm/CertificateValidator;->getZipEntryBytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    .line 201
    .local v0, certBytes:[B
    if-eqz v0, :cond_0

    .line 205
    invoke-static {v0}, Lcom/motorola/android/content/pm/CertificateValidator;->isCertChainValid([B)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, certChain:[Ljava/security/cert/Certificate;
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v8, v9}, Lorg/apache/harmony/security/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    if-nez v1, :cond_2

    .line 218
    const-string v8, "CertificateValidator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Empty cert chain in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :catch_0
    move-exception v4

    .line 214
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "CertificateValidator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot verify signature for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v8, Lcom/motorola/android/content/pm/CertificateValidator;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    sget-object v9, Lcom/motorola/android/content/pm/CertificateValidator;->mCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {v1}, Lcom/motorola/android/content/pm/CertificateValidator;->getArrayListFromArray([Ljava/security/cert/Certificate;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v9

    invoke-virtual {v8, v9, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 233
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 225
    :catch_1
    move-exception v3

    .line 226
    .local v3, cpve:Ljava/security/cert/CertPathValidatorException;
    const-string v8, "CertificateValidator"

    const-string v9, "Cannot validate certificate chain with the root cert."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    .end local v3           #cpve:Ljava/security/cert/CertPathValidatorException;
    :catch_2
    move-exception v4

    .line 229
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v8, "CertificateValidator"

    const-string v9, "Exception "

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private static verifySigner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "archiveSourcePath"
    .parameter "caCerts"

    .prologue
    const/4 v6, 0x0

    .line 113
    invoke-static {p1}, Lcom/motorola/android/content/pm/CertificateValidator;->getValidatorParametersFromZip(Ljava/lang/String;)Ljava/security/cert/PKIXParameters;

    move-result-object v4

    .line 114
    .local v4, validatorParameters:Ljava/security/cert/PKIXParameters;
    if-nez v4, :cond_0

    .line 115
    const-string v5, "CertificateValidator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No root cert found in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 141
    :goto_0
    return v5

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 121
    .local v0, apk:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    .end local v0           #apk:Ljava/util/zip/ZipFile;
    .local v1, apk:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 124
    .local v3, ee:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-static {v1, v5, v4}, Lcom/motorola/android/content/pm/CertificateValidator;->tryVerifyingCertChainAgainstRoot(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/security/cert/PKIXParameters;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    const/4 v5, 0x1

    .line 134
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "CertificateValidator"

    const-string v7, "Apk closing exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 134
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    :goto_1
    const-string v5, "CertificateValidator"

    const-string v7, "Signer is not trusted"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 141
    goto :goto_0

    .line 135
    :catch_1
    move-exception v2

    .line 136
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "CertificateValidator"

    const-string v7, "Apk closing exception: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 129
    .end local v1           #apk:Ljava/util/zip/ZipFile;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ee:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v0       #apk:Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v2

    .line 130
    .restart local v2       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v5, "CertificateValidator"

    const-string v7, "Apk parsing exception: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    move v5, v6

    .line 137
    goto :goto_0

    .line 135
    :catch_3
    move-exception v2

    .line 136
    const-string v5, "CertificateValidator"

    const-string v7, "Apk closing exception: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 133
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 134
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 137
    :goto_5
    throw v5

    .line 135
    :catch_4
    move-exception v2

    .line 136
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "CertificateValidator"

    const-string v7, "Apk closing exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 133
    .end local v0           #apk:Ljava/util/zip/ZipFile;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #apk:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #apk:Ljava/util/zip/ZipFile;
    .restart local v0       #apk:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 129
    .end local v0           #apk:Ljava/util/zip/ZipFile;
    .restart local v1       #apk:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #apk:Ljava/util/zip/ZipFile;
    .restart local v0       #apk:Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public static verifySigners(Ljava/lang/String;)I
    .locals 3
    .parameter "archiveSourcePath"

    .prologue
    const/4 v1, 0x0

    .line 84
    sget-object v2, Lcom/motorola/android/content/pm/CertificateValidator;->mCertFactory:Ljava/security/cert/CertificateFactory;

    if-nez v2, :cond_0

    .line 86
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    sput-object v2, Lcom/motorola/android/content/pm/CertificateValidator;->mCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    sget-object v2, Lcom/motorola/android/content/pm/CertificateValidator;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    if-nez v2, :cond_1

    .line 94
    :try_start_1
    const-string v2, "PKIX"

    invoke-static {v2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v2

    sput-object v2, Lcom/motorola/android/content/pm/CertificateValidator;->mCertPathValidator:Ljava/security/cert/CertPathValidator;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_1
    const-string v2, "/system/etc/security/mancacerts.zip"

    invoke-static {p0, v2}, Lcom/motorola/android/content/pm/CertificateValidator;->verifySigner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    const/4 v1, 0x1

    .line 108
    :cond_2
    :goto_0
    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/security/cert/CertificateException;
    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_3
    const-string v2, "/system/etc/security/oprcacerts.zip"

    invoke-static {p0, v2}, Lcom/motorola/android/content/pm/CertificateValidator;->verifySigner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    const/4 v1, 0x2

    goto :goto_0
.end method
