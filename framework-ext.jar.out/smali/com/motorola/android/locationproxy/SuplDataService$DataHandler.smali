.class Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;
.super Ljava/lang/Object;
.source "SuplDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/SuplDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataHandler"
.end annotation


# instance fields
.field private mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/motorola/android/locationproxy/SuplDataService;


# direct methods
.method private constructor <init>(Lcom/motorola/android/locationproxy/SuplDataService;)V
    .locals 1
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/locationproxy/SuplDataService;Lcom/motorola/android/locationproxy/SuplDataService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;-><init>(Lcom/motorola/android/locationproxy/SuplDataService;)V

    return-void
.end method


# virtual methods
.method public handleIncomingData(Ljava/nio/channels/SocketChannel;)V
    .locals 6
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 534
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 535
    .local v1, bytesRead:I
    if-gez v1, :cond_0

    .line 536
    const-string v2, "SUPLJ"

    const-string v3, "Connection closed by peer."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Connection closed by peer."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 539
    :cond_0
    const-string v2, "SUPLJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bytes read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 541
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    iget-object v3, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    #calls: Lcom/motorola/android/locationproxy/SuplDataService;->byteBuffer2ByteArray(Ljava/nio/ByteBuffer;)[B
    invoke-static {v2, v3}, Lcom/motorola/android/locationproxy/SuplDataService;->access$800(Lcom/motorola/android/locationproxy/SuplDataService;Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 542
    .local v0, b:[B
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    #getter for: Lcom/motorola/android/locationproxy/SuplDataService;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v2}, Lcom/motorola/android/locationproxy/SuplDataService;->access$600(Lcom/motorola/android/locationproxy/SuplDataService;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v2

    invoke-interface {v2, v5, v0, v5}, Lcom/motorola/android/locationproxy/ISuplCommands;->forwardSocketData(I[BI)V

    .line 543
    iget-object v2, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->mSocketInputDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 545
    return-void
.end method

.method public sendData([B)V
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    const-string v1, "SUPLJ"

    const-string v2, "sendData invoked."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v1, "SUPLJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 529
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const-string v1, "SUPLJ"

    const-string v2, "Calling flush..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/motorola/android/locationproxy/SuplDataService$DataHandler;->this$0:Lcom/motorola/android/locationproxy/SuplDataService;

    #calls: Lcom/motorola/android/locationproxy/SuplDataService;->flush(Ljava/nio/ByteBuffer;)V
    invoke-static {v1, v0}, Lcom/motorola/android/locationproxy/SuplDataService;->access$1000(Lcom/motorola/android/locationproxy/SuplDataService;Ljava/nio/ByteBuffer;)V

    .line 531
    return-void
.end method
