.class Lcom/zui/gallery/app/PhotoPage$14;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage;->showVideoMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 4145
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 4150
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$4400(Lcom/zui/gallery/app/PhotoPage;)V

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_4

    .line 4153
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$5200(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4154
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$5300(Lcom/zui/gallery/app/PhotoPage;)V

    return-void

    .line 4157
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getSize()J

    move-result-wide p1

    const-wide/32 v0, 0x1f400000

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    .line 4158
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p2, p2, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100121

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 4161
    :cond_2
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacyGroupExists()Z

    move-result p1

    const-string p2, "privatekey"

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacySpaceOff()Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p1, "\u9690\u79c1\u76f8\u518c\u5df2\u5b58\u5728"

    .line 4162
    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/app/PhotoPage;->access$4700(Lcom/zui/gallery/app/PhotoPage;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "\u8fd8\u672a\u521b\u5efa\u8fc7\u9690\u79c1\u76f8\u518c"

    .line 4167
    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.lenovo.privacyspace.verification"

    .line 4169
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4170
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p2, p2, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001fe

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.app.extra.TITLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4171
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage$14;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p2, p2, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v0, 0x22b8

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    :goto_0
    return-void
.end method
