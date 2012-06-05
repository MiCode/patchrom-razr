.class public Lcom/motorola/android/locationproxy/SuplCertPathChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "SuplCertPathChecker.java"


# static fields
.field private static final ANY_EXT_KEY_USAGE:Ljava/lang/String; = "2.5.29.37.0"

.field private static final CLIENT_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.2"

.field private static final CODE_SIGNING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.3"

.field static final DBG_TAG:Ljava/lang/String; = "SUPLJ"

.field private static final EMAIL_PROTECTION:Ljava/lang/String; = "1.3.6.1.5.5.7.3.4"

.field private static final EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field private static final OCSP_SIGNING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.9"

.field private static final SERVER_AUTH:Ljava/lang/String; = "1.3.6.1.5.5.7.3.1"

.field private static final TIME_STAMPING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.8"


# instance fields
.field mIsForward:Z

.field mSupportedExtension:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mIsForward:Z

    .line 40
    iput-boolean v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mIsForward:Z

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mSupportedExtension:Ljava/util/Set;

    .line 42
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mSupportedExtension:Ljava/util/Set;

    const-string v1, "2.5.29.37"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 6
    .parameter "cert"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 55
    .local p2, unresolvedCritExts:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v3, "2.5.29.37"

    invoke-interface {p2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 56
    const-string v3, "SUPLJ"

    const-string v4, "Handle Extended Key Usage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    .line 57
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 60
    .local v2, x509Cert:Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    .line 61
    .local v1, extKeyUsage:Ljava/util/List;
    if-nez v1, :cond_0

    .line 62
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Issue certificate extended key usage does not permit scerver authentication"

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1           #extKeyUsage:Ljava/util/List;
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/security/cert/CertificateParsingException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/CertificateParsingException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 64
    .end local v0           #e:Ljava/security/cert/CertificateParsingException;
    .restart local v1       #extKeyUsage:Ljava/util/List;
    :cond_0
    :try_start_1
    const-string v3, "SUPLJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length of extended key usage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v3, "SUPLJ"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v3, "2.5.29.37.0"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    .end local v1           #extKeyUsage:Ljava/util/List;
    .end local v2           #x509Cert:Ljava/security/cert/X509Certificate;
    :cond_1
    return-void

    .line 70
    .restart local v1       #extKeyUsage:Ljava/util/List;
    .restart local v2       #x509Cert:Ljava/security/cert/X509Certificate;
    :cond_2
    const-string v3, "1.3.6.1.5.5.7.3.1"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Issue certificate extended key usage does not permit scerver authentication"

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mSupportedExtension:Ljava/util/Set;

    return-object v0
.end method

.method public init(Z)V
    .locals 3
    .parameter "forward"

    .prologue
    .line 46
    const-string v0, "SUPLJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forward = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-boolean p1, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mIsForward:Z

    .line 48
    return-void
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/motorola/android/locationproxy/SuplCertPathChecker;->mIsForward:Z

    return v0
.end method
