.class final Lcom/android/internal/telephony/IccProvider$1;
.super Ljava/lang/Object;
.source "IccProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccProvider$1;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 108
    array-length v3, p1

    if-ge v3, v2, :cond_1

    const/4 v2, -0x1

    .line 112
    :cond_0
    :goto_0
    return v2

    .line 109
    :cond_1
    array-length v3, p2

    if-lt v3, v2, :cond_0

    .line 110
    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, firstName:Ljava/lang/String;
    aget-object v2, p2, v4

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, secondName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
