.class public Lcom/motorola/android/wifi/StaNetworkInfo;
.super Ljava/lang/Object;
.source "StaNetworkInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StaNetworkInfo"

.field private static final clientDevInfoPattern:Ljava/util/regex/Pattern;


# instance fields
.field public ip:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/wifi/StaNetworkInfo;->clientDevInfoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mac"
    .parameter "ip"
    .parameter "name"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->mac:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->ip:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->name:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public parseNetworkInfo(Ljava/lang/String;)Z
    .locals 5
    .parameter "line"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    sget-object v3, Lcom/motorola/android/wifi/StaNetworkInfo;->clientDevInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, result:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    array-length v3, v0

    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    .line 85
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->mac:Ljava/lang/String;

    .line 86
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->ip:Ljava/lang/String;

    .line 87
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->name:Ljava/lang/String;

    move v1, v2

    .line 89
    goto :goto_0
.end method

.method public parseNetworkInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "buf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/wifi/StaNetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v5, staNetworkInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/wifi/StaNetworkInfo;>;"
    const/4 v1, 0x0

    .line 104
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 105
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 107
    .local v3, line:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 108
    const-string v6, "StaNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseNetworkInfoList line:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v4, Lcom/motorola/android/wifi/StaNetworkInfo;

    invoke-direct {v4}, Lcom/motorola/android/wifi/StaNetworkInfo;-><init>()V

    .line 110
    .local v4, staNetworkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    invoke-virtual {v4, v3}, Lcom/motorola/android/wifi/StaNetworkInfo;->parseNetworkInfo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 120
    .end local v4           #staNetworkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 121
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v6, "StaNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when read StaNetworkInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    if-eqz v1, :cond_0

    .line 125
    :try_start_3
    const-string v6, "StaNetworkInfo"

    const-string v7, "BufferedReader closed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #in:Ljava/io/BufferedReader;
    :goto_2
    const/4 v1, 0x0

    .line 134
    .restart local v1       #in:Ljava/io/BufferedReader;
    :cond_0
    :goto_3
    return-object v5

    .line 116
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #staNetworkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    :cond_1
    :try_start_4
    const-string v6, "StaNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "misformatted device infor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 123
    .end local v4           #staNetworkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    :catchall_0
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_4
    if-eqz v1, :cond_2

    .line 125
    :try_start_5
    const-string v7, "StaNetworkInfo"

    const-string v8, "BufferedReader closed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 127
    const/4 v1, 0x0

    .line 123
    :cond_2
    :goto_5
    throw v6

    .line 128
    :catch_1
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    const-string v7, "StaNetworkInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when close reader:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 128
    .local v0, e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    const-string v6, "StaNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when close reader:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 123
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 125
    :try_start_6
    const-string v6, "StaNetworkInfo"

    const-string v7, "BufferedReader closed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 128
    :catch_3
    move-exception v0

    .line 129
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "StaNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when close reader:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 123
    .end local v3           #line:Ljava/lang/String;
    :catchall_1
    move-exception v6

    goto :goto_4

    .line 120
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 63
    .local v0, none:Ljava/lang/String;
    const-string v2, "mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->mac:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->ip:Ljava/lang/String;

    if-nez v3, :cond_1

    .end local v0           #none:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "Unknown"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 63
    .restart local v0       #none:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->mac:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->ip:Ljava/lang/String;

    goto :goto_1

    .end local v0           #none:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->name:Ljava/lang/String;

    goto :goto_2
.end method
