.class Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;
.super Ljava/lang/Object;
.source "ColorChooserDraw.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "colorTouchListener"
.end annotation


# instance fields
.field private mScaleStarted:Z

.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->mScaleStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 p1, 0x0

    .line 81
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isDrawColor:Z

    .line 82
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvoIndex:F

    .line 83
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hsvos:I

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const v0, 0x7f0500d8

    const v1, 0x7f070165

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->access$100(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->access$200(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 90
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    iput-boolean v2, p1, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->isBackToSize:Z

    .line 91
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->access$100(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->access$200(Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw$colorTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return v2
.end method
