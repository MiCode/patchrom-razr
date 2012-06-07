.class Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;
.super Landroid/os/AsyncTask;
.source "ThumbnailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/ThumbnailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLastThumbnail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/motorola/Camera/CameraRoll$CameraData;",
        ">;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mId:J

.field private mType:Z

.field final synthetic this$0:Lcom/motorola/Camera/ThumbnailController;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/ThumbnailController;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/Camera/ThumbnailController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->mFilePath:Ljava/lang/String;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->mType:Z

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->mId:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/ThumbnailController;Lcom/motorola/Camera/ThumbnailController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;-><init>(Lcom/motorola/Camera/ThumbnailController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraRoll$CameraData;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p1, params:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 132
    aget-object v7, p1, v11

    .line 134
    .local v7, camData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    const/4 v6, 0x0

    .line 135
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 136
    .local v8, i:I
    const/4 v9, 0x0

    .line 137
    .local v9, lastData:Lcom/motorola/Camera/CameraRoll$CameraData;
    :goto_0
    if-nez v6, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 138
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #lastData:Lcom/motorola/Camera/CameraRoll$CameraData;
    check-cast v9, Lcom/motorola/Camera/CameraRoll$CameraData;

    .line 139
    .restart local v9       #lastData:Lcom/motorola/Camera/CameraRoll$CameraData;
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/Camera/ThumbnailController;

    #getter for: Lcom/motorola/Camera/ThumbnailController;->mApplication:Landroid/app/Application;
    invoke-static {v0}, Lcom/motorola/Camera/ThumbnailController;->access$100(Lcom/motorola/Camera/ThumbnailController;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, v9, Lcom/motorola/Camera/CameraRoll$CameraData;->_id:J

    iget-object v3, v9, Lcom/motorola/Camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    iget v4, v9, Lcom/motorola/Camera/CameraRoll$CameraData;->dataType:I

    if-nez v4, :cond_1

    move v4, v10

    :goto_1
    iget-object v5, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/Camera/ThumbnailController;

    #getter for: Lcom/motorola/Camera/ThumbnailController;->mThumbnailSize:I
    invoke-static {v5}, Lcom/motorola/Camera/ThumbnailController;->access$200(Lcom/motorola/Camera/ThumbnailController;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/motorola/Camera/Util;->getThumbnail(Landroid/content/ContentResolver;JLjava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 140
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ThumbnailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap: \t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/motorola/Camera/CameraRoll$CameraData;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v4, v11

    .line 139
    goto :goto_1

    .line 144
    :cond_2
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraRoll$CameraData;

    iget-object v0, v0, Lcom/motorola/Camera/CameraRoll$CameraData;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->mFilePath:Ljava/lang/String;

    .line 145
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraRoll$CameraData;

    iget v0, v0, Lcom/motorola/Camera/CameraRoll$CameraData;->dataType:I

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v10, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->mType:Z

    .line 146
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraRoll$CameraData;

    iget-wide v0, v0, Lcom/motorola/Camera/CameraRoll$CameraData;->_id:J

    iput-wide v0, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->mId:J

    .line 147
    return-object v6

    :cond_3
    move v10, v11

    .line 145
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->doInBackground([Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 153
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ThumbnailController"

    const-string v1, "onPostExecute "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/Camera/ThumbnailController;

    #getter for: Lcom/motorola/Camera/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;
    invoke-static {v0}, Lcom/motorola/Camera/ThumbnailController;->access$300(Lcom/motorola/Camera/ThumbnailController;)Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->this$0:Lcom/motorola/Camera/ThumbnailController;

    #getter for: Lcom/motorola/Camera/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;
    invoke-static {v0}, Lcom/motorola/Camera/ThumbnailController;->access$300(Lcom/motorola/Camera/ThumbnailController;)Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->mFilePath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->mType:Z

    iget-wide v4, p0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->mId:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;->onUpdateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;ZJ)V

    .line 157
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
