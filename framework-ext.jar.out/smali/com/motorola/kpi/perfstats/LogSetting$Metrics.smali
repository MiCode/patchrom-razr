.class public final enum Lcom/motorola/kpi/perfstats/LogSetting$Metrics;
.super Ljava/lang/Enum;
.source "LogSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/perfstats/LogSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Metrics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/kpi/perfstats/LogSetting$Metrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

.field public static final enum DEVICE_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

.field public static final enum DEVICE_DISK:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

.field public static final enum DEVICE_MEMORY:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

.field public static final enum DEVICE_NETWORK:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

.field public static final enum PROCESS_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    const-string v1, "DEVICE_CPU"

    invoke-direct {v0, v1, v2}, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    .line 63
    new-instance v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    const-string v1, "DEVICE_MEMORY"

    invoke-direct {v0, v1, v3}, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_MEMORY:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    .line 64
    new-instance v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    const-string v1, "DEVICE_DISK"

    invoke-direct {v0, v1, v4}, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_DISK:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    .line 65
    new-instance v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    const-string v1, "DEVICE_NETWORK"

    invoke-direct {v0, v1, v5}, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_NETWORK:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    .line 66
    new-instance v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    const-string v1, "PROCESS_CPU"

    invoke-direct {v0, v1, v6}, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->PROCESS_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    sget-object v1, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_MEMORY:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_DISK:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_NETWORK:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->PROCESS_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->$VALUES:[Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/kpi/perfstats/LogSetting$Metrics;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const-class v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    return-object v0
.end method

.method public static values()[Lcom/motorola/kpi/perfstats/LogSetting$Metrics;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->$VALUES:[Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    invoke-virtual {v0}, [Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    return-object v0
.end method
