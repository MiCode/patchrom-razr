.class public final enum Landroid/net/ethernet/EthernetConfiguration$IpAssignment;
.super Ljava/lang/Enum;
.source "EthernetConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpAssignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/ethernet/EthernetConfiguration$IpAssignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

.field public static final enum DHCP:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

.field public static final enum STATIC:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

.field public static final enum UNASSIGNED:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    const-string v1, "DHCP"

    invoke-direct {v0, v1, v2}, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->DHCP:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    .line 26
    new-instance v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v3}, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->STATIC:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    .line 29
    new-instance v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    const-string v1, "UNASSIGNED"

    invoke-direct {v0, v1, v4}, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    sget-object v1, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->DHCP:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->STATIC:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->$VALUES:[Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/ethernet/EthernetConfiguration$IpAssignment;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    return-object v0
.end method

.method public static values()[Landroid/net/ethernet/EthernetConfiguration$IpAssignment;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->$VALUES:[Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    invoke-virtual {v0}, [Landroid/net/ethernet/EthernetConfiguration$IpAssignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/ethernet/EthernetConfiguration$IpAssignment;

    return-object v0
.end method
