.class Lcom/motorola/Camera/CameraRoll$SortComparator;
.super Ljava/lang/Object;
.source "CameraRoll.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CameraRoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/motorola/Camera/CameraRoll$CameraData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/CameraRoll;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/CameraRoll;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll$SortComparator;->this$0:Lcom/motorola/Camera/CameraRoll;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/CameraRoll;Lcom/motorola/Camera/CameraRoll$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CameraRoll$SortComparator;-><init>(Lcom/motorola/Camera/CameraRoll;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/motorola/Camera/CameraRoll$CameraData;Lcom/motorola/Camera/CameraRoll$CameraData;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 334
    iget-wide v0, p1, Lcom/motorola/Camera/CameraRoll$CameraData;->dateTaken:J

    iget-wide v2, p2, Lcom/motorola/Camera/CameraRoll$CameraData;->dateTaken:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 335
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    .line 337
    :cond_0
    iget-wide v0, p1, Lcom/motorola/Camera/CameraRoll$CameraData;->dateTaken:J

    iget-wide v2, p2, Lcom/motorola/Camera/CameraRoll$CameraData;->dateTaken:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 338
    const/4 v0, -0x1

    goto :goto_0

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    check-cast p1, Lcom/motorola/Camera/CameraRoll$CameraData;

    .end local p1
    check-cast p2, Lcom/motorola/Camera/CameraRoll$CameraData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/Camera/CameraRoll$SortComparator;->compare(Lcom/motorola/Camera/CameraRoll$CameraData;Lcom/motorola/Camera/CameraRoll$CameraData;)I

    move-result v0

    return v0
.end method
