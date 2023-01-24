.class Lcom/google/vr/sdk/widgets/common/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field private static final STATE_KEY_IS_ORIENTATION_LOCKED:Ljava/lang/String; = "isOrientationLocked"

.field private static final STATE_KEY_ORIGINAL_REQUESTED_ORIENTATION:Ljava/lang/String; = "originalRequestedOrientation"


# instance fields
.field private activity:Landroid/app/Activity;

.field private isOrientationLocked:Z

.field private originalRequestedOrientation:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public isInPortraitOrientation()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public lockOrientation()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->isOrientationLocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->originalRequestedOrientation:I

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->isInPortraitOrientation()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->isOrientationLocked:Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "originalRequestedOrientation"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->originalRequestedOrientation:I

    const-string v0, "isOrientationLocked"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->isOrientationLocked:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->isOrientationLocked:Z

    const-string v2, "isOrientationLocked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    iget v1, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->originalRequestedOrientation:I

    const-string v2, "originalRequestedOrientation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public restoreOriginalOrientation()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->isOrientationLocked:Z

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->originalRequestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
