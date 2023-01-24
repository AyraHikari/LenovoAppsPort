.class Lcom/zui/gallery/app/IntelligentRotationPresenter$2;
.super Landroid/view/OrientationEventListener;
.source "IntelligentRotationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/IntelligentRotationPresenter;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/IntelligentRotationPresenter;Landroid/content/Context;I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-wide v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->lastUpdateOrientation:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x64

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-wide v6, v6, Lcom/zui/gallery/app/IntelligentRotationPresenter;->lastUpdateOrientation:J

    sub-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orientation changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentRotationPresenter"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-wide v6, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->lastUpdateOrientation:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_13

    .line 118
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-wide v6, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->lastUpdateOrientation:J

    sub-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$402(I)I

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->lastUpdateOrientation:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MainActivityxx"

    const-string v3, "orientationManager query orientation setting exception "

    .line 125
    invoke-static {v2, v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$400()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    instance-of v2, v0, Lcom/zui/gallery/app/PhotoPage;

    if-eqz v2, :cond_3

    instance-of v0, v0, Lcom/zui/gallery/app/ContinuousSelectionPage;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 219
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    invoke-virtual {p1, v3}, Lcom/zui/gallery/selfwidget/RotateImageView;->setVisibility(I)V

    const-string p1, "rotatedImage.setVisibilitysb2"

    .line 220
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 129
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {v0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$500(Lcom/zui/gallery/app/IntelligentRotationPresenter;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/selfwidget/RotateImageView;->setVisibility(I)V

    :cond_4
    const-string v0, "rotatedImage.setVisibilitysb1"

    .line 131
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput p1, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->currentOrientation:I

    const/16 v0, 0x1e

    const/16 v5, 0x10e

    const/16 v6, 0x5a

    if-ltz p1, :cond_5

    if-le p1, v0, :cond_6

    :cond_5
    const/16 v7, 0x14a

    if-lt p1, v7, :cond_7

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotationFlag:I

    if-eqz v0, :cond_a

    .line 137
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v2, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->targetOritentation:I

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v2, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotationFlag:I

    goto :goto_2

    :cond_7
    const/16 v7, 0xe6

    if-lt p1, v7, :cond_8

    const/16 v7, 0x136

    if-gt p1, v7, :cond_8

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotationFlag:I

    if-eq v0, v6, :cond_a

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v6, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->targetOritentation:I

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v6, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotationFlag:I

    goto :goto_2

    :cond_8
    if-le p1, v0, :cond_9

    const/16 v0, 0x5f

    if-ge p1, v0, :cond_9

    .line 151
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotationFlag:I

    if-eq v0, v5, :cond_a

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v5, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->targetOritentation:I

    .line 155
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v5, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotationFlag:I

    goto :goto_2

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotationFlag:I

    const/16 v7, 0xb4

    if-eq v0, v7, :cond_a

    .line 160
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v7, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->targetOritentation:I

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v7, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotationFlag:I

    .line 164
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->targetOritentation:I

    if-eq v0, v6, :cond_b

    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->targetOritentation:I

    if-ne v0, v5, :cond_c

    .line 166
    :cond_b
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {v0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$100(Lcom/zui/gallery/app/IntelligentRotationPresenter;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 167
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {v0, v4}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$502(Lcom/zui/gallery/app/IntelligentRotationPresenter;Z)Z

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/selfwidget/RotateImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {v0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$300(Lcom/zui/gallery/app/IntelligentRotationPresenter;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {v0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$600(Lcom/zui/gallery/app/IntelligentRotationPresenter;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->tipsToast:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 176
    :cond_c
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    iget-object v5, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v5, v5, Lcom/zui/gallery/app/IntelligentRotationPresenter;->targetOritentation:I

    invoke-virtual {v0, v5, v4}, Lcom/zui/gallery/selfwidget/RotateImageView;->setOrientation(IZ)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchOn3:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MainActivity"

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-boolean v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x2d

    if-ltz p1, :cond_d

    if-le p1, v0, :cond_e

    :cond_d
    const/16 v5, 0x13b

    if-lt p1, v5, :cond_f

    .line 180
    :cond_e
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    if-eq p1, v4, :cond_13

    const-string p1, "Screen orientation changed from Landscape to Portrait!"

    .line 181
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-virtual {v0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rePositionMarkIcon()V

    .line 184
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v4, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    .line 185
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_f
    const/16 v4, 0xe1

    const/16 v6, 0x87

    if-lt p1, v6, :cond_10

    if-gt p1, v4, :cond_10

    .line 188
    iget-object v0, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v0, v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_13

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen orientation changed from Landscape to REVERSE Portrait! orientation:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 191
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-virtual {p1}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rePositionMarkIcon()V

    .line 192
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v2, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    const-string p1, "Screen orientation changed from Landscape to REVERSE Portrait!"

    .line 193
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_10
    if-le p1, v0, :cond_11

    if-ge p1, v6, :cond_11

    .line 197
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    if-eq p1, v3, :cond_13

    .line 198
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v3, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    .line 199
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 200
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-virtual {p1}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rePositionMarkIcon()V

    const-string p1, "Screen orientation changed from Portrait to REVERSE Landscape!"

    .line 201
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_11
    if-le p1, v4, :cond_13

    if-ge p1, v5, :cond_13

    .line 204
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    if-eqz p1, :cond_13

    .line 205
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v2, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    .line 206
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 207
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-virtual {p1}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rePositionMarkIcon()V

    const-string p1, "Screen orientation changed from Portrait to Landscape!"

    .line 208
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 212
    :cond_12
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 213
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iput v4, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->screenOrientation:I

    .line 223
    :cond_13
    :goto_3
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$2;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->lastUpdateOrientation:J

    return-void
.end method
