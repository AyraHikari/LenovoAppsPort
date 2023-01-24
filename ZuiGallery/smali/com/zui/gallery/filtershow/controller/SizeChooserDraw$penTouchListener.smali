.class Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$penTouchListener;
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
    name = "penTouchListener"
.end annotation


# instance fields
.field private mScaleStarted:Z

.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$penTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$penTouchListener;->mScaleStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$penTouchListener;-><init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const v0, 0x7f08024a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$penTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->access$500(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;I)V

    .line 175
    sput-boolean v2, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    .line 176
    sput-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaDraw:Z

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$penTouchListener;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->access$500(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;I)V

    .line 179
    sput-boolean v2, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    .line 180
    sput-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaDraw:Z

    :cond_1
    :goto_0
    return v1
.end method
