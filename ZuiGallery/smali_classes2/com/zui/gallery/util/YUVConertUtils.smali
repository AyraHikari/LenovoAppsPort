.class public Lcom/zui/gallery/util/YUVConertUtils;
.super Ljava/lang/Object;
.source "YUVConertUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CONVERT_UTILS"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "convert_jni"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v0, "CONVERT_UTILS"

    const-string v1, "library not found!"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native decodeYUV420SP([BII)V
.end method

.method public getJpgData([BII)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/util/YUVConertUtils;->decodeYUV420SP([BII)V

    return-void
.end method
