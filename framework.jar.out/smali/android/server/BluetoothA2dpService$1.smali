.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, action:Ljava/lang/String;
    const-string v18, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 135
    .local v6, device:Landroid/bluetooth/BluetoothDevice;
    const-string v18, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 136
    const-string v18, "android.bluetooth.adapter.extra.STATE"

    const/high16 v19, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 138
    .local v15, state:I
    packed-switch v15, :pswitch_data_0

    .line 276
    .end local v15           #state:I
    :cond_0
    :goto_0
    return-void

    .line 140
    .restart local v15       #state:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 143
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 146
    .end local v15           #state:I
    :cond_1
    const-string v18, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 147
    monitor-enter p0

    .line 148
    if-nez v6, :cond_2

    .line 149
    :try_start_0
    const-string v18, "BluetoothA2dpService"

    const-string v19, "Error! device is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit p0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 152
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 154
    .restart local v15       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v6, v15, v1}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 156
    .end local v15           #state:I
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :cond_4
    const-string v18, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 158
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 159
    .local v16, streamType:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "StreamType is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " SinkVolSupport:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mSinkVolumeSupport:I
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 160
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v14

    .line 163
    .local v14, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mSinkVolumeSupport:I
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 165
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, address:Ljava/lang/String;
    const-string v18, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 168
    .local v10, newVolLevel:I
    const-string v18, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 170
    .local v11, oldVolLevel:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NewVolLevel:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " OldVolLevel:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->handleVolumeChangedAction(Ljava/lang/String;II)V
    invoke-static {v0, v12, v11, v10}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 178
    .end local v4           #address:Ljava/lang/String;
    .end local v10           #newVolLevel:I
    .end local v11           #oldVolLevel:I
    .end local v12           #path:Ljava/lang/String;
    .end local v14           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v16           #streamType:I
    :cond_5
    const-string v18, "com.android.music.playstatechanged"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 180
    const-string v18, "received playstatechanged Action"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackTitle:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v17

    .line 182
    .local v17, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackTitle:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackTitle:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_6

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "filename"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackTitle:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mArtist:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$902(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbum:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1002(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "trackno"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackNo:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "totaltrack"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mNoOfTracks:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "duration"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackDuration:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "position"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackPosition:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "status"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayBackStatus:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received Meta Data Details Track = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackTitle:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Artist = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtist:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Album = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbum:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Trackno = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackNo:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " no.of track = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mNoOfTracks:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " TrackDuration = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackDuration:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " TrackPosition = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackPosition:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->getConnectedSinkPaths()[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v5

    .local v5, arr$:[Ljava/lang/String;
    array-length v9, v5

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_9

    aget-object v12, v5, v8

    .line 195
    .restart local v12       #path:Ljava/lang/String;
    const-string v18, "Inside path loop"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 196
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "path = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 197
    if-nez v17, :cond_7

    .line 198
    const-string v18, "Sending First time MEta change event"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v12}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 201
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayBackStatus:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    #calls: Landroid/server/BluetoothA2dpService;->convertPlayBackStatusStringtoState(Ljava/lang/String;)I
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;II)V
    invoke-static {v0, v12, v1, v2}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;II)V

    .line 203
    const-string v18, "Sending playing state"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 194
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 206
    .end local v12           #path:Ljava/lang/String;
    :cond_9
    const-string v18, "received playstatechanged Action"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v17           #tmp:Ljava/lang/String;
    :cond_a
    const-string v18, "com.android.music.metachanged"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 210
    const-string v18, "received metachanged Action New Build"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackTitle:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackTitle:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_b

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "filename"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackTitle:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mArtist:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$902(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbum:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1002(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "trackno"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackNo:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "totaltrack"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mNoOfTracks:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "duration"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackDuration:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "position"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackPosition:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received Meta Data Details Track = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackTitle:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Artist = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtist:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Album = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbum:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Trackno = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackNo:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " no.of track = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mNoOfTracks:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " TrackDuration = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackDuration:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " TrackPosition = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackPosition:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->getConnectedSinkPaths()[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v9, v5

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v9, :cond_0

    aget-object v12, v5, v8

    .line 223
    .restart local v12       #path:Ljava/lang/String;
    const-string v18, "Inside path loop"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 224
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "path = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v12}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackNo:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;II)V
    invoke-static {v0, v12, v1, v2}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;II)V

    .line 222
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 230
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #path:Ljava/lang/String;
    :cond_c
    const-string v18, "com.android.music.queuechanged"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "totaltrack"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mNoOfTracks:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "trackno"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackNo:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "queuechanged Received Meta Data Details Trackno = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackNo:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " no.of track = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mNoOfTracks:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->getConnectedSinkPaths()[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v9, v5

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_3
    if-ge v8, v9, :cond_0

    aget-object v12, v5, v8

    .line 235
    .restart local v12       #path:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Inside path sending metadata "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v12}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 234
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 239
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #path:Ljava/lang/String;
    :cond_d
    const-string v18, "com.android.music.playerstopped"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 240
    const-string v18, "received playerstopped Action"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->getConnectedSinkPaths()[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v9, v5

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_4
    if-ge v8, v9, :cond_0

    aget-object v12, v5, v8

    .line 242
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;II)V
    invoke-static {v0, v12, v1, v2}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;II)V

    .line 241
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 244
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #path:Ljava/lang/String;
    :cond_e
    const-string v18, "com.android.music.playerpaused"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 245
    const-string v18, "received paused Action"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->getConnectedSinkPaths()[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v9, v5

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_5
    if-ge v8, v9, :cond_0

    aget-object v12, v5, v8

    .line 247
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;II)V
    invoke-static {v0, v12, v1, v2}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;II)V

    .line 246
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 248
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #path:Ljava/lang/String;
    :cond_f
    const-string v18, "com.android.music.playerforward"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 249
    const-string v18, "received forward Action"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->getConnectedSinkPaths()[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v9, v5

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_6
    if-ge v8, v9, :cond_0

    aget-object v12, v5, v8

    .line 251
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;II)V
    invoke-static {v0, v12, v1, v2}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;II)V

    .line 250
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 252
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #path:Ljava/lang/String;
    :cond_10
    const-string v18, "com.android.music.playerrewind"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 253
    const-string v18, "received rewind Action"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->getConnectedSinkPaths()[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v9, v5

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_7
    if-ge v8, v9, :cond_0

    aget-object v12, v5, v8

    .line 255
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;II)V
    invoke-static {v0, v12, v1, v2}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;II)V

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 256
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #path:Ljava/lang/String;
    :cond_11
    const-string v18, "com.android.music.playstatus"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 257
    const-string v18, "Received com.android.music.playstatus"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "duration"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackDuration:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string v19, "position"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackPosition:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "status"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayBackStatus:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    const/4 v7, 0x0

    .line 262
    .local v7, duration:I
    const/4 v13, 0x0

    .line 263
    .local v13, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackDuration:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_12

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackDuration:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 266
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackPosition:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_13

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackPosition:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 269
    :cond_13
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "duration "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " position "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " status "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayBackStatus:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    #calls: Landroid/server/BluetoothA2dpService;->getConnectedSinkPaths()[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v9, v5

    .restart local v9       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_8
    if-ge v8, v9, :cond_0

    aget-object v12, v5, v8

    .line 271
    .restart local v12       #path:Ljava/lang/String;
    const-string v18, "Inside path loop"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 272
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "path = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Landroid/server/BluetoothA2dpService;->access$500(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v20, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayBackStatus:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v20

    #calls: Landroid/server/BluetoothA2dpService;->convertPlayBackStatusStringtoState(Ljava/lang/String;)I
    invoke-static/range {v19 .. v20}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;III)V
    invoke-static {v0, v12, v7, v13, v1}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;III)V

    .line 270
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 138
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
