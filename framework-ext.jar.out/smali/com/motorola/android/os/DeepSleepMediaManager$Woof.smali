.class Lcom/motorola/android/os/DeepSleepMediaManager$Woof;
.super Ljava/lang/Object;
.source "DeepSleepMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/os/DeepSleepMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Woof"
.end annotation


# static fields
.field private static final sC2S:[Ljava/lang/String;

.field private static sInstance:Lcom/motorola/android/os/DeepSleepMediaManager$Woof;


# instance fields
.field private mWhat:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Cmd Recv Worker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Register Receiver"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UnRegister Receiver"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;->sC2S:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static getInstance(I)Lcom/motorola/android/os/DeepSleepMediaManager$Woof;
    .locals 1
    .parameter "what"

    .prologue
    .line 84
    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;->sInstance:Lcom/motorola/android/os/DeepSleepMediaManager$Woof;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;

    invoke-direct {v0}, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;-><init>()V

    sput-object v0, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;->sInstance:Lcom/motorola/android/os/DeepSleepMediaManager$Woof;

    .line 87
    :cond_0
    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;->sInstance:Lcom/motorola/android/os/DeepSleepMediaManager$Woof;

    iput p0, v0, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;->mWhat:I

    .line 88
    sget-object v0, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;->sInstance:Lcom/motorola/android/os/DeepSleepMediaManager$Woof;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 92
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DSM cmd \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;->sC2S:[Ljava/lang/String;

    iget v3, p0, Lcom/motorola/android/os/DeepSleepMediaManager$Woof;->mWhat:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' seems hung up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
