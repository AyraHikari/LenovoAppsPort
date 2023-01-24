.class Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private final mActionId:I

.field private final mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

.field private final msg:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/gallery/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p4, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->msg:Ljava/lang/String;

    .line 362
    iput p2, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    .line 363
    iput-object p3, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    return-void
.end method

.method private avatarDeletePhoto()V
    .locals 5

    .line 383
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->msg:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 384
    iget-object v1, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v1}, Lcom/zui/gallery/ui/MenuExecutor;->access$400(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, v3, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v3}, Lcom/zui/gallery/ui/MenuExecutor;->access$400(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, v3, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v3}, Lcom/zui/gallery/ui/MenuExecutor;->access$400(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, v3, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-static {v3}, Lcom/zui/gallery/ui/MenuExecutor;->access$400(Lcom/zui/gallery/ui/MenuExecutor;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_DELETE:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, v3, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 401
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 402
    invoke-interface {p1, v0}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 369
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 370
    invoke-interface {p1, p2}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->avatarDeletePhoto()V

    .line 374
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/zui/gallery/ui/MenuExecutor;

    iget p2, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->mActionId:I

    iget-object v0, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    invoke-static {p1, p2, v0}, Lcom/zui/gallery/ui/MenuExecutor;->access$500(Lcom/zui/gallery/ui/MenuExecutor;ILcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 377
    invoke-interface {p1, p2}, Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    :cond_2
    :goto_0
    return-void
.end method
