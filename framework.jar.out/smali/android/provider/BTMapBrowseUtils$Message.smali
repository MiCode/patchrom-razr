.class public Landroid/provider/BTMapBrowseUtils$Message;
.super Ljava/lang/Object;
.source "BTMapBrowseUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BTMapBrowseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Message"
.end annotation


# instance fields
.field private datetime:J

.field private message:[Ljava/lang/String;

.field final synthetic this$0:Landroid/provider/BTMapBrowseUtils;


# direct methods
.method public constructor <init>(Landroid/provider/BTMapBrowseUtils;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Landroid/provider/BTMapBrowseUtils$Message;->this$0:Landroid/provider/BTMapBrowseUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->message:[Ljava/lang/String;

    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    .line 327
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->message:[Ljava/lang/String;

    .line 328
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 7
    .parameter "obj"

    .prologue
    .line 339
    move-object v2, p1

    check-cast v2, Landroid/provider/BTMapBrowseUtils$Message;

    .line 340
    .local v2, tmp:Landroid/provider/BTMapBrowseUtils$Message;
    invoke-virtual {v2}, Landroid/provider/BTMapBrowseUtils$Message;->getDateTime()J

    move-result-wide v0

    .line 342
    .local v0, oDateTime:J
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compare to date = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-wide v3, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 346
    const/4 v3, -0x1

    .line 352
    :goto_0
    return v3

    .line 347
    :cond_0
    iget-wide v3, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_1

    .line 349
    const/4 v3, 0x1

    goto :goto_0

    .line 352
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getDateTime()J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    return-wide v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 334
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->message:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setDateTime(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 332
    iput-wide p1, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    return-void
.end method

.method public setField(ILjava/lang/String;)V
    .locals 2
    .parameter "position"
    .parameter "value"

    .prologue
    .line 330
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->message:[Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 331
    :cond_0
    return-void
.end method
