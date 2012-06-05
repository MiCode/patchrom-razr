.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsException;
.super Ljava/lang/Exception;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsSmsException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsException;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    .line 398
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 399
    return-void
.end method
