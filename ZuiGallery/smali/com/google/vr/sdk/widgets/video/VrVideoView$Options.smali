.class public Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;
.super Ljava/lang/Object;
.source "VrVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/VrVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field public static final FORMAT_DASH:I = 0x3

.field public static final FORMAT_DEFAULT:I = 0x1

.field private static final FORMAT_END_MARKER:I = 0x4

.field public static final FORMAT_HLS:I = 0x2

.field private static final FORMAT_START_MARKER:I = 0x0

.field private static final TYPE_END_MARKER:I = 0x3

.field public static final TYPE_MONO:I = 0x1

.field private static final TYPE_START_MARKER:I = 0x0

.field public static final TYPE_STEREO_OVER_UNDER:I = 0x2


# instance fields
.field public inputFormat:I

.field public inputType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputFormat:I

    .line 3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputType:I

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 5

    .line 4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputFormat:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputFormat:I

    const/16 v3, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid Options.inputFormat: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputFormat:I

    .line 7
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputType:I

    if-lez v0, :cond_2

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputType:I

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid Options.inputType: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputType:I

    :cond_3
    return-void
.end method
