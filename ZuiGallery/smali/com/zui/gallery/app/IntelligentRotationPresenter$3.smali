.class Lcom/zui/gallery/app/IntelligentRotationPresenter$3;
.super Landroid/os/Handler;
.source "IntelligentRotationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/IntelligentRotationPresenter;
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

    .line 365
    iput-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$3;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 368
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$3;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->tipsToast:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$3;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    iget-object p1, p1, Lcom/zui/gallery/app/IntelligentRotationPresenter;->mGalleryActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 372
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "intelligent_rotation_showed_tips"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    iget-object p1, p0, Lcom/zui/gallery/app/IntelligentRotationPresenter$3;->this$0:Lcom/zui/gallery/app/IntelligentRotationPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/IntelligentRotationPresenter;->access$302(Lcom/zui/gallery/app/IntelligentRotationPresenter;Z)Z

    :goto_0
    return-void
.end method
