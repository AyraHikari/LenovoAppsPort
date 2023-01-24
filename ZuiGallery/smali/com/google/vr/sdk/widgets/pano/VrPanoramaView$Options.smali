.class public Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;
.super Ljava/lang/Object;
.source "VrPanoramaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field private static final TYPE_END_MARKER:I = 0x3

.field public static final TYPE_MONO:I = 0x1

.field private static final TYPE_START_MARKER:I = 0x0

.field public static final TYPE_STEREO_OVER_UNDER:I = 0x2


# instance fields
.field public inputType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;->inputType:I

    return-void
.end method


# virtual methods
.method validate()V
    .locals 4

    .line 67
    iget v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;->inputType:I

    if-lez v0, :cond_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 68
    :cond_0
    invoke-static {}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;->inputType:I

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid Options.inputType: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;->inputType:I

    :cond_1
    return-void
.end method
