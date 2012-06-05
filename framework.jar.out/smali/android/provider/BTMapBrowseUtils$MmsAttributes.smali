.class public Landroid/provider/BTMapBrowseUtils$MmsAttributes;
.super Ljava/lang/Object;
.source "BTMapBrowseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BTMapBrowseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmsAttributes"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field box:Ljava/lang/String;

.field date:J

.field msg_type:I

.field priority:I

.field read_status:I

.field subject:Ljava/lang/String;

.field final synthetic this$0:Landroid/provider/BTMapBrowseUtils;

.field to:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/provider/BTMapBrowseUtils;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "c_to"
    .parameter "c_subject"
    .parameter "c_body"
    .parameter "c_msg_type"
    .parameter "c_priority"
    .parameter "c_read_status"
    .parameter "c_date"
    .parameter "c_box"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 847
    iput-object p1, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->this$0:Landroid/provider/BTMapBrowseUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->priority:I

    iput v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->msg_type:I

    iput v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->read_status:I

    .line 843
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->date:J

    .line 844
    iput-object v2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->subject:Ljava/lang/String;

    iput-object v2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->to:[Ljava/lang/String;

    iput-object v2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->body:Ljava/lang/String;

    iput-object v2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->box:Ljava/lang/String;

    .line 848
    iput-object p2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->to:[Ljava/lang/String;

    .line 849
    iput p6, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->priority:I

    .line 850
    iput-object p3, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->subject:Ljava/lang/String;

    .line 851
    iput-object p4, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->body:Ljava/lang/String;

    .line 852
    iput p5, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->msg_type:I

    .line 853
    iput p7, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->read_status:I

    .line 854
    iput-wide p8, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->date:J

    .line 855
    iput-object p10, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->box:Ljava/lang/String;

    .line 856
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->box:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 860
    iget-wide v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->date:J

    return-wide v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->msg_type:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->priority:I

    return v0
.end method

.method public getReadStatus()I
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->read_status:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->to:[Ljava/lang/String;

    return-object v0
.end method
