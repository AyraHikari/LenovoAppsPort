.class public final synthetic Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

.field public final synthetic f$1:Landroid/widget/VideoView;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/widget/ImageView;

.field public final synthetic f$4:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;Landroid/widget/VideoView;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$0:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    iput-object p2, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$1:Landroid/widget/VideoView;

    iput-object p3, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$3:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$4:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$0:Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;

    iget-object v1, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$1:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$3:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/zui/gallery/trash/-$$Lambda$TrashPreviewPagerAdapter$zSLVX8N5OlBX7v4Muaqu07kbq_A;->f$4:Landroid/widget/ImageView;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/trash/TrashPreviewPagerAdapter;->lambda$videoPlay$0$TrashPreviewPagerAdapter(Landroid/widget/VideoView;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
