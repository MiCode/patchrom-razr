.class public abstract Lcom/motorola/blur/music/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/motorola/blur/music/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/music/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/music/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.blur.music.IMediaPlaybackService"

.field static final TRANSACTION_callNotifyChange:I = 0x2d

.field static final TRANSACTION_duration:I = 0xb

.field static final TRANSACTION_enqueue:I = 0x13

.field static final TRANSACTION_enqueue2:I = 0x28

.field static final TRANSACTION_getAlbumId:I = 0x10

.field static final TRANSACTION_getAlbumName:I = 0xf

.field static final TRANSACTION_getArtistId:I = 0x12

.field static final TRANSACTION_getArtistName:I = 0x11

.field static final TRANSACTION_getAudioId:I = 0x18

.field static final TRANSACTION_getBufferPercentage:I = 0x27

.field static final TRANSACTION_getData:I = 0x25

.field static final TRANSACTION_getDlnaAudioId:I = 0x19

.field static final TRANSACTION_getFingerprint:I = 0x2a

.field static final TRANSACTION_getMediaMountedCount:I = 0x21

.field static final TRANSACTION_getPath:I = 0x17

.field static final TRANSACTION_getPlaybackType:I = 0x22

.field static final TRANSACTION_getPlaylistCurrentLength:I = 0x2c

.field static final TRANSACTION_getQueue:I = 0x14

.field static final TRANSACTION_getQueue2:I = 0x29

.field static final TRANSACTION_getQueuePosition:I = 0x4

.field static final TRANSACTION_getRepeatMode:I = 0x20

.field static final TRANSACTION_getShuffleMode:I = 0x1c

.field static final TRANSACTION_getTrackName:I = 0xe

.field static final TRANSACTION_isDlnaAudioPlaying:I = 0x1a

.field static final TRANSACTION_isPlaying:I = 0x5

.field static final TRANSACTION_moveQueueItem:I = 0x15

.field static final TRANSACTION_next:I = 0xa

.field static final TRANSACTION_open:I = 0x3

.field static final TRANSACTION_open2:I = 0x26

.field static final TRANSACTION_openfile:I = 0x1

.field static final TRANSACTION_openfileAsync:I = 0x2

.field static final TRANSACTION_pause:I = 0x7

.field static final TRANSACTION_play:I = 0x8

.field static final TRANSACTION_position:I = 0xc

.field static final TRANSACTION_prev:I = 0x9

.field static final TRANSACTION_removeTrack:I = 0x1e

.field static final TRANSACTION_removeTrack2:I = 0x2b

.field static final TRANSACTION_removeTracks:I = 0x1d

.field static final TRANSACTION_seek:I = 0xd

.field static final TRANSACTION_setData:I = 0x24

.field static final TRANSACTION_setPlaybackType:I = 0x23

.field static final TRANSACTION_setQueuePosition:I = 0x16

.field static final TRANSACTION_setRepeatMode:I = 0x1f

.field static final TRANSACTION_setShuffleMode:I = 0x1b

.field static final TRANSACTION_stop:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/music/IMediaPlaybackService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/blur/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/motorola/blur/music/IMediaPlaybackService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/motorola/blur/music/IMediaPlaybackService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 442
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->openfile(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->openfileAsync(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 69
    .local v0, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->open([II)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:[I
    .end local v2           #_arg1:I
    :sswitch_4
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v4

    .line 78
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v4           #_result:I
    :sswitch_5
    const-string v8, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v4

    .line 86
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v4           #_result:Z
    :sswitch_6
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->stop()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    :sswitch_7
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->pause()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 106
    :sswitch_8
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->play()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    :sswitch_9
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->prev()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    :sswitch_a
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->next()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    :sswitch_b
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v4

    .line 129
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 135
    .end local v4           #_result:J
    :sswitch_c
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->position()J

    move-result-wide v4

    .line 137
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 143
    .end local v4           #_result:J
    :sswitch_d
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 146
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v4

    .line 147
    .restart local v4       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 153
    .end local v0           #_arg0:J
    .end local v4           #_result:J
    :sswitch_e
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    .line 163
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getAlbumId()I

    move-result v4

    .line 171
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v4           #_result:I
    :sswitch_11
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getArtistId()I

    move-result v4

    .line 187
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v4           #_result:I
    :sswitch_13
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 197
    .local v0, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->enqueue([II)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 204
    .end local v0           #_arg0:[I
    .end local v2           #_arg1:I
    :sswitch_14
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getQueue()[I

    move-result-object v4

    .line 206
    .local v4, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 212
    .end local v4           #_result:[I
    :sswitch_15
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 223
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_16
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 232
    .end local v0           #_arg0:I
    :sswitch_17
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_18
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getAudioId()I

    move-result v4

    .line 242
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 248
    .end local v4           #_result:I
    :sswitch_19
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getDlnaAudioId()I

    move-result v4

    .line 250
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v4           #_result:I
    :sswitch_1a
    const-string v8, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->isDlnaAudioPlaying()Z

    move-result v4

    .line 258
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v4           #_result:Z
    :sswitch_1b
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 267
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 273
    .end local v0           #_arg0:I
    :sswitch_1c
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v4

    .line 275
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 281
    .end local v4           #_result:I
    :sswitch_1d
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 285
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v4

    .line 287
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v4           #_result:I
    :sswitch_1e
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->removeTrack(I)I

    move-result v4

    .line 297
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 303
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_1f
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 312
    .end local v0           #_arg0:I
    :sswitch_20
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v4

    .line 314
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 320
    .end local v4           #_result:I
    :sswitch_21
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v4

    .line 322
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 328
    .end local v4           #_result:I
    :sswitch_22
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getPlaybackType()I

    move-result v4

    .line 330
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    .end local v4           #_result:I
    :sswitch_23
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->setPlaybackType(I)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 345
    .end local v0           #_arg0:I
    :sswitch_24
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 356
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_25
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_26
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 370
    .local v0, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, _arg1:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 373
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->open2([I[Ljava/lang/String;I)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 379
    .end local v0           #_arg0:[I
    .end local v2           #_arg1:[Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_27
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getBufferPercentage()I

    move-result v4

    .line 381
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 387
    .end local v4           #_result:I
    :sswitch_28
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 391
    .restart local v0       #_arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 393
    .restart local v2       #_arg1:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 394
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->enqueue2([I[Ljava/lang/String;I)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 400
    .end local v0           #_arg0:[I
    .end local v2           #_arg1:[Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_29
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getQueue2()[Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_2a
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getFingerprint()Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->removeTrack2(Ljava/lang/String;)I

    move-result v4

    .line 420
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 426
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_2c
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->getPlaylistCurrentLength()I

    move-result v4

    .line 428
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 434
    .end local v4           #_result:I
    :sswitch_2d
    const-string v6, "com.motorola.blur.music.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/music/IMediaPlaybackService$Stub;->callNotifyChange(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
