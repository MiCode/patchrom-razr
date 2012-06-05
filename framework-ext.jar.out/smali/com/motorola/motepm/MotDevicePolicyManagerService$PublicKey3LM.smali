.class Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;
.super Ljava/lang/Object;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublicKey3LM"
.end annotation


# instance fields
.field private m3LMPublicKey:[B

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 3914
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3915
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;->mContext:Landroid/content/Context;

    .line 3916
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3917
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x1040018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3918
    .local v0, cert:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v1

    .line 3919
    .local v1, key:Ljava/security/PublicKey;
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;->m3LMPublicKey:[B

    .line 3920
    return-void
.end method

.method private extractPublicKey([B)Ljava/security/PublicKey;
    .locals 6
    .parameter "blob"

    .prologue
    .line 3926
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 3927
    .local v0, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 3929
    .local v2, x509Cert:Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3935
    .end local v0           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v2           #x509Cert:Ljava/security/cert/Certificate;
    :goto_0
    return-object v3

    .line 3931
    :catch_0
    move-exception v1

    .line 3932
    .local v1, e:Ljava/security/cert/CertificateException;
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate parsing exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public comparePublicKey([B)Z
    .locals 3
    .parameter "blob"

    .prologue
    .line 3939
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;->extractPublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    .line 3940
    .local v0, blobKey:Ljava/security/PublicKey;
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PublicKey3LM;->m3LMPublicKey:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method
