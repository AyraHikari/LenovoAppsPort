.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;
.super Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SimpleListener;
.source "LocalTimeAlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)V

    return-void
.end method

.method public onLocalTimeAlbumViewModelChange(II)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 972
    sget-object p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 973
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/GLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/GLView;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 975
    sget-object p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 976
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/GLView;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/GLView;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 978
    sget-object p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->YEAR:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 981
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;I)V

    .line 982
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    .line 983
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/GLView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/GLView;)V

    :cond_3
    return-void
.end method

.method public onLongTap(ILandroid/graphics/Rect;I)V
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0, p1, p2, p3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public onScroll()V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;II)V

    return-void
.end method

.method public onSingleTapUpPosition(II)V
    .locals 3

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5e97\u5e97\u5e97x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ceshitap"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 955
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getRecoderOCSTP_X()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getRecoderOCSTP_X()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getOCSTP_Width()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    .line 956
    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getRecoderOCSTP_Y()I

    move-result p1

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getRecoderOCSTP_Y()I

    move-result p1

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->getOCSTP_Height()I

    move-result v1

    add-int/2addr p1, v1

    if-gt p2, p1, :cond_0

    const-string p1, "android.hardware.camera"

    .line 957
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.hardware.camera.front"

    .line 958
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 959
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    :cond_0
    return-void
.end method

.method public onUp(Z)V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$3200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)V

    return-void
.end method

.method public selectionAllTimeEntry(IIZ)Z
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0, p1, p2, p3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$4200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;IIZ)Z

    move-result p1

    return p1
.end method
