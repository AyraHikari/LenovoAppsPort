.class public Lcom/zui/gallery/filtershow/EditorPlaceHolder;
.super Ljava/lang/Object;
.source "EditorPlaceHolder.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "EditorPlaceHolder"


# instance fields
.field private mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mEditors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/zui/gallery/filtershow/editors/Editor;",
            ">;"
        }
    .end annotation
.end field

.field private mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field private mOldViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 22
    iput-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mOldViews:Ljava/util/Vector;

    .line 27
    iput-object p1, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    return-void
.end method


# virtual methods
.method public addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contains(I)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEditor(I)Lcom/zui/gallery/filtershow/editors/Editor;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/editors/Editor;

    return-object p1
.end method

.method public hide()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public hideOldViews()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mOldViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeEditor(I)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/editors/Editor;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "editor is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanoom"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getImageShow()Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getImageShow()Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->detach()V

    :cond_1
    return-void
.end method

.method public setContainer(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setOldViews(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/imageshow/ImageShow;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mOldViews:Ljava/util/Vector;

    return-void
.end method

.method public showEditor(ILcom/meicam/effect/sdk/NvsEffectRenderCore;)Lcom/zui/gallery/filtershow/editors/Editor;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mEditors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/editors/Editor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    .line 52
    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 53
    iget-object p2, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 54
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getImageShow()Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->attach()V

    .line 55
    iget-object p2, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 56
    iget-object p2, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 57
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getTopLevelView()Landroid/view/View;

    move-result-object p2

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 61
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getDrawRect()Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object p2

    if-eqz p2, :cond_3

    sget p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v1, 0xa

    if-ne p2, v1, :cond_3

    .line 67
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getDrawRect()Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 68
    instance-of v1, p2, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 69
    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getDrawRect()Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->hideOldViews()V

    .line 75
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/Editor;->setVisibility(I)V

    return-object p1
.end method
