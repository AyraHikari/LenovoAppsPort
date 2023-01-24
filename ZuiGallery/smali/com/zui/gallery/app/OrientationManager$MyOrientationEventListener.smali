.class Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field private screenchange:I

.field final synthetic this$0:Lcom/zui/gallery/app/OrientationManager;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/OrientationManager;Landroid/content/Context;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    .line 159
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 157
    iput p1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->screenchange:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5

    const-string v0, "OrientationManager"

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string p1, "orientation unknow"

    .line 169
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {v1}, Lcom/zui/gallery/app/OrientationManager;->access$000(Lcom/zui/gallery/app/OrientationManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {v3}, Lcom/zui/gallery/app/OrientationManager;->access$100(Lcom/zui/gallery/app/OrientationManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {v1}, Lcom/zui/gallery/app/OrientationManager;->access$200(Lcom/zui/gallery/app/OrientationManager;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->screenchange:I

    .line 179
    iget-object v1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/zui/gallery/app/OrientationManager;->access$102(Lcom/zui/gallery/app/OrientationManager;J)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "orientationManager query orientation setting exception "

    .line 183
    invoke-static {v0, v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {v0}, Lcom/zui/gallery/app/OrientationManager;->access$300(Lcom/zui/gallery/app/OrientationManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/OrientationManager;->access$400(II)I

    move-result p1

    .line 187
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {v0}, Lcom/zui/gallery/app/OrientationManager;->access$200(Lcom/zui/gallery/app/OrientationManager;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopStateNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    .line 188
    iget v1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->screenchange:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {v1}, Lcom/zui/gallery/app/OrientationManager;->access$000(Lcom/zui/gallery/app/OrientationManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    instance-of v1, v0, Lcom/zui/gallery/app/PhotoPage;

    if-eqz v1, :cond_4

    instance-of v0, v0, Lcom/zui/gallery/app/ContinuousSelectionPage;

    if-nez v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {v0}, Lcom/zui/gallery/app/OrientationManager;->access$300(Lcom/zui/gallery/app/OrientationManager;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/OrientationManager;->access$302(Lcom/zui/gallery/app/OrientationManager;I)I

    .line 202
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {p1}, Lcom/zui/gallery/app/OrientationManager;->access$200(Lcom/zui/gallery/app/OrientationManager;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    return-void

    .line 205
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/OrientationManager;

    invoke-static {p1}, Lcom/zui/gallery/app/OrientationManager;->access$200(Lcom/zui/gallery/app/OrientationManager;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    return-void
.end method
