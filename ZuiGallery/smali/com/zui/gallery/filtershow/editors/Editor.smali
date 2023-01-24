.class public Lcom/zui/gallery/filtershow/editors/Editor;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/zui/gallery/filtershow/editors/SwapButton$SwapButtonListener;


# static fields
.field public static SHOW_VALUE_INT:B = 0x1t

.field public static SHOW_VALUE_OFF:B = 0x0t

.field public static SHOW_VALUE_UNDEFINED:B = -0x1t


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mButton:Landroid/widget/Button;

.field protected mChangesGeometry:Z

.field protected mContext:Landroid/content/Context;

.field public mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

.field mEditTitle:Landroid/widget/Button;

.field protected mFilterTitle:Landroid/widget/Button;

.field protected mFrameLayout:Landroid/widget/FrameLayout;

.field protected mID:I

.field public mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

.field protected mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

.field public mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field protected mSeekBar:Landroid/widget/SeekBar;

.field protected mShowParameter:B

.field protected mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Editor"

    .line 69
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->LOGTAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mChangesGeometry:Z

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 72
    sget-byte v0, Lcom/zui/gallery/filtershow/editors/Editor;->SHOW_VALUE_UNDEFINED:B

    iput-byte v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mShowParameter:B

    .line 91
    iput p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mID:I

    return-void
.end method

.method private findImageShow(Landroid/view/View;)Lcom/zui/gallery/filtershow/imageshow/ImageShow;
    .locals 5

    .line 183
    instance-of v0, p1, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    return-object p1

    .line 186
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 189
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 190
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 192
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 193
    instance-of v4, v3, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    if-eqz v4, :cond_2

    .line 194
    check-cast v3, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object v3, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    goto :goto_1

    .line 195
    :cond_2
    instance-of v4, v3, Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    if-eqz v4, :cond_3

    .line 196
    check-cast v3, Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    iput-object v3, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    goto :goto_1

    .line 197
    :cond_3
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 198
    invoke-direct {p0, v3}, Lcom/zui/gallery/filtershow/editors/Editor;->findImageShow(Landroid/view/View;)Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public static hackFixStrings(Landroid/view/Menu;)V
    .locals 4

    .line 79
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 81
    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 82
    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public clearCaptionEffect()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->clearCaptionEffect()V

    :cond_0
    return-void
.end method

.method public commitLocalRepresentation()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public commitLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 2

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation(Ljava/util/Collection;)V

    return-void
.end method

.method public commitLocalRepresentation(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->updateFilterRepresentations(Ljava/util/Collection;)V

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->updateText()V

    .line 296
    :cond_1
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mChangesGeometry:Z

    if-eqz p1, :cond_2

    .line 298
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->resetGeometryImages(Z)V

    .line 301
    :cond_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidateFiltersOnly()V

    if-eqz v0, :cond_3

    .line 303
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getState()Lcom/zui/gallery/filtershow/state/StateAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->fillImageStateAdapter(Lcom/zui/gallery/filtershow/state/StateAdapter;)V

    :cond_3
    return-void
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-void
.end method

.method protected createMenu([ILandroid/view/View;)V
    .locals 4

    .line 352
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 353
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 354
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 355
    iget-object v3, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    aget v1, p1, v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v2, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 357
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/Editor;->setMenuIcon(Z)V

    return-void
.end method

.method public destoryView()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->destoryView()V

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->detach()V

    :cond_0
    return-void
.end method

.method public finalApplyCalled()V
    .locals 0

    .line 311
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method

.method public getControls()[Lcom/zui/gallery/filtershow/controller/Control;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawRect()Lcom/zui/gallery/filtershow/caption/view/DrawRect;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mID:I

    return v0
.end method

.method public getImageShow()Lcom/zui/gallery/filtershow/imageshow/ImageShow;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method public getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->IsInSavingTask(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 252
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterRepresentationCopyFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 254
    iget-byte v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mShowParameter:B

    sget-byte v2, Lcom/zui/gallery/filtershow/editors/Editor;->SHOW_VALUE_UNDEFINED:B

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->showParameterValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    sget-byte v0, Lcom/zui/gallery/filtershow/editors/Editor;->SHOW_VALUE_INT:B

    goto :goto_0

    :cond_1
    sget-byte v0, Lcom/zui/gallery/filtershow/editors/Editor;->SHOW_VALUE_OFF:B

    :goto_0
    iput-byte v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mShowParameter:B

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method public getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-object v0
.end method

.method public getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 232
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 233
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 234
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 235
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 236
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTopLevelView()Landroid/view/View;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getchildViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 213
    iget-object v3, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 214
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->showsPopupIndicator()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;->setMenuIcon(Z)V

    .line 341
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->openUtilityPanel(Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 2

    const/4 v0, 0x0

    .line 326
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 327
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mFilterTitle:Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mFilterTitle:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->updateText()V

    :cond_0
    return-void
.end method

.method public setLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-void
.end method

.method protected setMenuIcon(Z)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mEditTitle:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0701bb

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/Button;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-void
.end method

.method public setPanel()V
    .locals 0

    return-void
.end method

.method public setUpEditorUI(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 108
    iput-object p3, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mEditTitle:Landroid/widget/Button;

    .line 109
    iput-object p4, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mFilterTitle:Landroid/widget/Button;

    .line 110
    iput-object p3, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    .line 111
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->resetGeometryImages(Z)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 129
    check-cast p2, Landroid/view/ViewGroup;

    const v1, 0x7f0b0064

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const v0, 0x7f0802b2

    .line 131
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    .line 132
    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 133
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->showsSeekBar()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mSeekBar:Landroid/widget/SeekBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->showsPopupIndicator()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/Editor;->setMenuIcon(Z)V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showParameterValue()B
    .locals 1

    .line 99
    iget-byte v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mShowParameter:B

    return v0
.end method

.method public showsPopupIndicator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showsSeekBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public swapLeft(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public swapRight(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method protected unpack(II)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 164
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 170
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mView:Landroid/view/View;

    if-nez p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mView:Landroid/view/View;

    .line 176
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/Editor;->findImageShow(Landroid/view/View;)Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    return-void
.end method

.method protected updateText()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mLocalRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 317
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 319
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/editors/Editor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v0, v1}, Lcom/zui/gallery/filtershow/editors/Editor;->calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public useUtilityPanel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
