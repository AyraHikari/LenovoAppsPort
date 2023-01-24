.class public Lcom/google/vr/ndk/base/BufferSpec$DepthStencilFormat;
.super Ljava/lang/Object;
.source "BufferSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/BufferSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DepthStencilFormat"
.end annotation


# static fields
.field public static final DEPTH_16:I = 0x0

.field public static final DEPTH_24:I = 0x1

.field public static final DEPTH_24_STENCIL_8:I = 0x2

.field public static final DEPTH_32_F:I = 0x3

.field public static final DEPTH_32_F_STENCIL_8:I = 0x4

.field public static final NONE:I = 0xff

.field public static final NUM_FORMATS:I = 0x6

.field public static final STENCIL_8:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
