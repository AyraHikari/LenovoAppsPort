.class public final synthetic Lcom/zui/gallery/app/-$$Lambda$AbstractGalleryActivity$84Czn5RkkMrGhKdzT5IlK3GYOW8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field public final synthetic f$1:Landroid/widget/RelativeLayout$LayoutParams;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/-$$Lambda$AbstractGalleryActivity$84Czn5RkkMrGhKdzT5IlK3GYOW8;->f$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/zui/gallery/app/-$$Lambda$AbstractGalleryActivity$84Czn5RkkMrGhKdzT5IlK3GYOW8;->f$1:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p3, p0, Lcom/zui/gallery/app/-$$Lambda$AbstractGalleryActivity$84Czn5RkkMrGhKdzT5IlK3GYOW8;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    iget-object v0, p0, Lcom/zui/gallery/app/-$$Lambda$AbstractGalleryActivity$84Czn5RkkMrGhKdzT5IlK3GYOW8;->f$0:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/-$$Lambda$AbstractGalleryActivity$84Czn5RkkMrGhKdzT5IlK3GYOW8;->f$1:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/zui/gallery/app/-$$Lambda$AbstractGalleryActivity$84Czn5RkkMrGhKdzT5IlK3GYOW8;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->lambda$setBottomMargin$0$AbstractGalleryActivity(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
