.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;
.super Ljava/lang/Object;
.source "CdmaDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 731
    const-wide/16 v3, -0x1

    .local v3, preTxPkts:J
    const-wide/16 v1, -0x1

    .line 735
    .local v1, preRxPkts:J
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v3

    .line 736
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v1

    .line 738
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 739
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v10

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 743
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gtz v9, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-lez v9, :cond_2

    .line 744
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v9

    sub-long v7, v9, v3

    .line 745
    .local v7, sent:J
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v9

    sub-long v5, v9, v1

    .line 747
    .local v5, received:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_5

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_5

    .line 748
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 749
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 751
    .local v0, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsDataStallStarted:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 752
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendDataStallNotification(Z)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)V

    .line 753
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsDataStallStarted:Z
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 779
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    if-eq v9, v0, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 780
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 781
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 785
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v5           #received:J
    .end local v7           #sent:J
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v9

    const-wide/16 v11, 0xa

    cmp-long v9, v9, v11

    if-ltz v9, :cond_d

    .line 788
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v9

    if-nez v9, :cond_3

    .line 789
    const v9, 0xc3b5

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 794
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v9

    const/16 v10, 0x18

    if-ge v9, v10, :cond_c

    .line 795
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2808(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    .line 797
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v10, 0x1388

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 817
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 818
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    :cond_4
    return-void

    .line 756
    .restart local v5       #received:J
    .restart local v7       #sent:J
    :cond_5
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_7

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_7

    .line 757
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_6

    .line 758
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-static {v9, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1214(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 762
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_0

    .line 760
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    goto :goto_2

    .line 763
    :cond_7
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_8

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_8

    .line 764
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 765
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 767
    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsDataStallStarted:Z
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 768
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendDataStallNotification(Z)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)V

    .line 769
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsDataStallStarted:Z
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    goto/16 :goto_0

    .line 772
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_8
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_a

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-nez v9, :cond_a

    .line 773
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v0

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_3
    goto/16 :goto_0

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_3

    .line 775
    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J

    .line 776
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v0

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_4
    goto/16 :goto_0

    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_4

    .line 799
    .end local v5           #received:J
    .end local v7           #sent:J
    :cond_c
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkts since last received"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 802
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x1

    #calls: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendDataStallNotification(Z)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)V

    .line 803
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x1

    #setter for: Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsDataStallStarted:Z
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 807
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 808
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 809
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->restartRadio()V

    .line 810
    const v9, 0xc3b6

    const/16 v10, 0x18

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(II)I

    goto/16 :goto_1

    .line 813
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    .line 814
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v10, 0x3e8

    #setter for: Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$3302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    goto/16 :goto_1
.end method
