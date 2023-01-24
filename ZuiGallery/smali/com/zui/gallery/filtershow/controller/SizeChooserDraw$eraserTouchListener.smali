.class Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$eraserTouchListener;
.super Ljava/lang/Object;
.source "SizeChooserDraw.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "eraserTouchListener"
.end annotation


# instance fields
.field private mScaleStarted:Z

.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$eraserTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$eraserTouchListener;->mScaleStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$eraserTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const v0, 0x7f080191

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$eraserTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->access$500(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;I)V

    .line 191
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaDraw:Z

    .line 192
    sput-boolean v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$eraserTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->access$500(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;I)V

    .line 195
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaDraw:Z

    .line 196
    sput-boolean v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    :cond_1
    :goto_0
    return v1
.end method
