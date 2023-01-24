.class public final synthetic Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$zcrhcj5p3_l32if0_nZGeYPV2q4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$zcrhcj5p3_l32if0_nZGeYPV2q4;->f$0:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$zcrhcj5p3_l32if0_nZGeYPV2q4;->f$0:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/banner/FileListDetailsActivity;->lambda$setTitleHeight$0(Landroid/widget/RelativeLayout$LayoutParams;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
