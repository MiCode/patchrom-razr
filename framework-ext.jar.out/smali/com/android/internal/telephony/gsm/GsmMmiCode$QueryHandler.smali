.class Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GsmMmiCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMmiCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmMmiCode;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 1652
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1653
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    .line 1657
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAllowUssdCallFwd:Z

    .line 1661
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1664
    :cond_0
    const-string v1, "number"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1665
    .local v0, numberInList:Ljava/lang/String;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberInList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    if-nez p2, :cond_2

    .line 1680
    .end local v0           #numberInList:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAllowUssdCallFwd:Z

    if-eqz v1, :cond_6

    .line 1681
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    if-ne p1, v4, :cond_5

    .line 1683
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1693
    .end local p2
    :cond_1
    :goto_1
    return-void

    .line 1669
    .restart local v0       #numberInList:Ljava/lang/String;
    .restart local p2
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1671
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iput-boolean v4, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAllowUssdCallFwd:Z

    .line 1672
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1675
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1677
    .end local v0           #numberInList:Ljava/lang/String;
    :cond_4
    const-string v1, "GSM"

    const-string v2, "GsmMmiCode.QueryHandler.onQueryComplete Cursor null/empty ...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1684
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1685
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1686
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto :goto_1

    .line 1691
    .restart local p2
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->displayFdnBlockError()V

    goto :goto_1
.end method
