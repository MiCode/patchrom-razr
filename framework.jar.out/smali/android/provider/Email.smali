.class public final Landroid/provider/Email;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Email$Intents;,
        Landroid/provider/Email$ControlColumns;,
        Landroid/provider/Email$SyncColumns;,
        Landroid/provider/Email$SyncTypes;,
        Landroid/provider/Email$InboxStatusColumns;,
        Landroid/provider/Email$AccountStatusTypes;,
        Landroid/provider/Email$AccountStatusColumns;,
        Landroid/provider/Email$SystemFolderColumns;,
        Landroid/provider/Email$FolderLockColumns;,
        Landroid/provider/Email$FolderFlagsColumns;,
        Landroid/provider/Email$MessageFlagsColumns;,
        Landroid/provider/Email$FolderType;,
        Landroid/provider/Email$NodeSyncStatus;,
        Landroid/provider/Email$NodeFlags;,
        Landroid/provider/Email$MessageStatus;,
        Landroid/provider/Email$MessagePriority;,
        Landroid/provider/Email$MimeConstants;,
        Landroid/provider/Email$DownloadStatus;,
        Landroid/provider/Email$FileOpenMode;,
        Landroid/provider/Email$Message;,
        Landroid/provider/Email$MessageColumns;,
        Landroid/provider/Email$Folder;,
        Landroid/provider/Email$FolderColumns;,
        Landroid/provider/Email$NodeColumns;,
        Landroid/provider/Email$BodyParts;,
        Landroid/provider/Email$BodyPartColumns;,
        Landroid/provider/Email$SortOrder;,
        Landroid/provider/Email$MimeTypes;,
        Landroid/provider/Email$ContentUri;,
        Landroid/provider/Email$TableNames;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.blur.service.email.engine.EmailProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 953
    return-void
.end method
