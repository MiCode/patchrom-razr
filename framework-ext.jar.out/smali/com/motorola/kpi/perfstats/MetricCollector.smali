.class public abstract Lcom/motorola/kpi/perfstats/MetricCollector;
.super Ljava/lang/Object;
.source "MetricCollector.java"


# static fields
.field private static final NULL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected final mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "\u0000"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/kpi/perfstats/MetricCollector;->NULL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/motorola/kpi/perfstats/LogSetting;)V
    .locals 0
    .parameter "logSetting"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/motorola/kpi/perfstats/MetricCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    .line 31
    return-void
.end method

.method protected static final sanitizedReadLine(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .parameter "br"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, sanitized:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 57
    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v3, Lcom/motorola/kpi/perfstats/MetricCollector;->NULL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 59
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    move-object v2, v0

    .line 64
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    return-object v2
.end method


# virtual methods
.method abstract collect()Landroid/os/Bundle;
.end method

.method abstract getKey()Ljava/lang/String;
.end method
