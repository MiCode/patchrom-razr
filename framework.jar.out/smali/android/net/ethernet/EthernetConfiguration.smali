.class public Landroid/net/ethernet/EthernetConfiguration;
.super Ljava/lang/Object;
.source "EthernetConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ethernet/EthernetConfiguration$ProxySettings;,
        Landroid/net/ethernet/EthernetConfiguration$IpAssignment;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ethernet/EthernetConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ipAssignment:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

.field public linkProperties:Landroid/net/LinkProperties;

.field public proxySettings:Landroid/net/ethernet/EthernetConfiguration$ProxySettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/net/ethernet/EthernetConfiguration$1;

    invoke-direct {v0}, Landroid/net/ethernet/EthernetConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/ethernet/EthernetConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    iput-object v0, p0, Landroid/net/ethernet/EthernetConfiguration;->ipAssignment:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    .line 56
    sget-object v0, Landroid/net/ethernet/EthernetConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/ethernet/EthernetConfiguration$ProxySettings;

    iput-object v0, p0, Landroid/net/ethernet/EthernetConfiguration;->proxySettings:Landroid/net/ethernet/EthernetConfiguration$ProxySettings;

    .line 57
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/net/ethernet/EthernetConfiguration;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p1, Landroid/net/ethernet/EthernetConfiguration;->ipAssignment:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    iput-object v0, p0, Landroid/net/ethernet/EthernetConfiguration;->ipAssignment:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    .line 82
    iget-object v0, p1, Landroid/net/ethernet/EthernetConfiguration;->proxySettings:Landroid/net/ethernet/EthernetConfiguration$ProxySettings;

    iput-object v0, p0, Landroid/net/ethernet/EthernetConfiguration;->proxySettings:Landroid/net/ethernet/EthernetConfiguration$ProxySettings;

    .line 83
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Landroid/net/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, sbuf:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP assignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ethernet/EthernetConfiguration;->ipAssignment:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ethernet/EthernetConfiguration;->proxySettings:Landroid/net/ethernet/EthernetConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget-object v1, p0, Landroid/net/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/net/ethernet/EthernetConfiguration;->ipAssignment:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroid/net/ethernet/EthernetConfiguration;->proxySettings:Landroid/net/ethernet/EthernetConfiguration$ProxySettings;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetConfiguration$ProxySettings;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Landroid/net/ethernet/EthernetConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    return-void
.end method
