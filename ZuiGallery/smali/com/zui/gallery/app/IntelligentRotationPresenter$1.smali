.class Lcom/zui/gallery/app/IntelligentRotationPresenter$1;
.super Ljava/lang/Object;
.source "IntelligentRotationPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/zui/gallery/app/IntelligentRotationPresenter;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 76
    sget-boolean p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 77
    sput-boolean v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    goto :goto_0

    .line 79
    :cond_0
    sput-boolean v1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    .line 81
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchOn:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "IntelligentRotationPresenter"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {p1}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$000(Lcom/zui/gallery/app/IntelligentRotationPresenter;)V

    .line 83
    sget-boolean p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    if-nez p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->rotatedImage:Lcom/zui/gallery/selfwidget/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/zui/gallery/selfwidget/RotateImageView;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {p1, v1}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$102(Lcom/zui/gallery/app/IntelligentRotationPresenter;Z)Z

    .line 86
    sput-boolean v0, Lcom/zui/gallery/app/IntelligentRotationPresenter;->switchOn:Z

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {p1}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$000(Lcom/zui/gallery/app/IntelligentRotationPresenter;)V

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "targetOritentation:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v2, v2, Lcom/zui/gallery/app/IntelligentRotationPresenter;->targetOritentation:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "douniwande"

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget v2, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->targetOritentation:I

    invoke-static {p1, v2}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$200(Lcom/zui/gallery/app/IntelligentRotationPresenter;I)V

    .line 94
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->tipsToast:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 95
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 97
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-eqz p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 99
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "intelligent_rotation_showed_tips"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$1;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-static {p1, v0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$302(Lcom/zui/gallery/app/IntelligentRotationPresenter;Z)Z

    :cond_4
    return-void
.end method
