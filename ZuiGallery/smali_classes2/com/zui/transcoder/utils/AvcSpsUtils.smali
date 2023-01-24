.class public Lcom/zui/transcoder/utils/AvcSpsUtils;
.super Ljava/lang/Object;
.source "AvcSpsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfileIdc(Ljava/nio/ByteBuffer;)B
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0
.end method
