.class public final Lcom/motorola/android/xmp/XMPPathFactory;
.super Ljava/lang/Object;
.source "XMPPathFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XMPPathFactory"

.field private static exceptionNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 223
    const/4 v1, -0x1

    sput v1, Lcom/motorola/android/xmp/XMPPathFactory;->exceptionNum:I

    .line 230
    :try_start_0
    const-string v1, "Xmp_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 231
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 233
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "XMPPathFactory"

    const-string v2, "xmp_jni library not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static declared-synchronized composeArrayItemPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "arrayNS"
    .parameter "arrayName"
    .parameter "itemIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 101
    const-class v2, Lcom/motorola/android/xmp/XMPPathFactory;

    monitor-enter v2

    :try_start_0
    const-string v1, "XMPPathFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter composeArrayItemPath, arrayNS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "arrayName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "itemIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 103
    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 104
    if-gez p2, :cond_0

    .line 106
    const-string v1, "XMPPathFactory"

    const-string v3, "Parameter is not correct"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Lcom/motorola/android/xmp/XMPException;

    const-string v3, "parameter is not correct"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 109
    :cond_0
    const/4 v1, -0x1

    :try_start_1
    sput v1, Lcom/motorola/android/xmp/XMPPathFactory;->exceptionNum:I

    .line 110
    invoke-static {p0, p1, p2}, Lcom/motorola/android/xmp/XMPPathFactory;->composeArrayItemPathNat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, result:Ljava/lang/String;
    sget v1, Lcom/motorola/android/xmp/XMPPathFactory;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit v2

    return-object v0
.end method

.method private static native composeArrayItemPathNat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static declared-synchronized composeLangSelector(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "arraySchemaNS"
    .parameter "arrayName"
    .parameter "langName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 208
    const-class v2, Lcom/motorola/android/xmp/XMPPathFactory;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 210
    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 211
    const/4 v1, -0x1

    sput v1, Lcom/motorola/android/xmp/XMPPathFactory;->exceptionNum:I

    .line 212
    invoke-static {p0, p1, p2}, Lcom/motorola/android/xmp/XMPPathFactory;->composeLangSelectorNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, result:Ljava/lang/String;
    sget v1, Lcom/motorola/android/xmp/XMPPathFactory;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit v2

    return-object v0

    .line 208
    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native composeLangSelectorNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized composeQualifierPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "qualNS"
    .parameter "qualName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 170
    const-class v2, Lcom/motorola/android/xmp/XMPPathFactory;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 172
    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 173
    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 174
    const/4 v1, -0x1

    sput v1, Lcom/motorola/android/xmp/XMPPathFactory;->exceptionNum:I

    .line 175
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/android/xmp/XMPPathFactory;->composeQualifierPathNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, result:Ljava/lang/String;
    sget v1, Lcom/motorola/android/xmp/XMPPathFactory;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit v2

    return-object v0

    .line 170
    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native composeQualifierPathNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "structNS"
    .parameter "structName"
    .parameter "fieldNS"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 136
    const-class v2, Lcom/motorola/android/xmp/XMPPathFactory;

    monitor-enter v2

    :try_start_0
    const-string v1, "XMPPathFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter composeStructFieldPath,structNS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",structName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",fieldNS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",fieldName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 142
    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 143
    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 145
    const/4 v1, -0x1

    sput v1, Lcom/motorola/android/xmp/XMPPathFactory;->exceptionNum:I

    .line 146
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/android/xmp/XMPPathFactory;->composeStructFieldPathNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, result:Ljava/lang/String;
    sget v1, Lcom/motorola/android/xmp/XMPPathFactory;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit v2

    return-object v0

    .line 136
    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native composeStructFieldPathNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
