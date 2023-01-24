.class public Lcom/zui/gallery/filtershow/editors/EditorPanel;
.super Landroidx/fragment/app/Fragment;
.source "EditorPanel.java"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "EditorPanel"

.field private static final GEOMETRY_MIRROR_VALUE:Ljava/lang/String; = "geometry_mirror_value"

.field private static final GEOMETRY_MIRROR_VALUE_CABCEL:Ljava/lang/String; = "geometry_mirror_value_cancel"

.field private static final GEOMETRY_ROTATION_VALUE:Ljava/lang/String; = "geometry_rotation_value"

.field private static final GEOMETRY_ROTATION_VALUE_CANCEL:Ljava/lang/String; = "geometry_rotation_value_cancel"

.field private static final LOGTAG:Ljava/lang/String; = "EditorPanel"

.field public static isMirrorCancel:Z = false

.field public static isMirrorRotationCancel:Z = false

.field public static mGeometryAppliedFiltersCount:I


# instance fields
.field public mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mEditorID:I

.field public mImageCurvesPanel:Landroid/view/View;

.field private mIsVertical:Z

.field private mMainView:Landroid/widget/LinearLayout;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mIsVertical:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/editors/EditorPanel;I)Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getCurrentRotation(I)Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/editors/EditorPanel;I)Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getCurrentMirror(I)Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentMirror(I)Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;
    .locals 2

    .line 378
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 387
    :cond_1
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 384
    :cond_2
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 381
    :cond_3
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    :goto_0
    return-object v0
.end method

.method private getCurrentRotation(I)Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;
    .locals 2

    .line 359
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    if-eqz p1, :cond_3

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->TWO_SEVENTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 368
    :cond_1
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ONE_EIGHTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 365
    :cond_2
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->NINETY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 362
    :cond_3
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public cancelCurrentFilter()V
    .locals 2

    .line 94
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHistory()Lcom/zui/gallery/filtershow/history/HistoryManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/history/HistoryManager;->undo()I

    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->onHistoryItemClick(I)V

    .line 100
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public cancelCurves()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->resetPanlWidth()V

    :cond_0
    return-void
.end method

.method public cancelGeometryCurrentFilter()V
    .locals 2

    .line 109
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHistory()Lcom/zui/gallery/filtershow/history/HistoryManager;

    .line 113
    sget v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    .line 114
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->onHistoryItemClick(I)V

    .line 115
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->invalidateViews()V

    return-void
.end method

.method public getEditor()Lcom/zui/gallery/filtershow/editors/Editor;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    return-object v0
.end method

.method public getEditorId()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditorID:I

    return v0
.end method

.method public getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 350
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 351
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 352
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 353
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 354
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 435
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 436
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    const-string v0, "longEditor"

    if-nez p1, :cond_0

    const-string p1, "onActivityCreated: null"

    .line 437
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.zui.gallery.filtershow.editors.EditorDraw"

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 442
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/Control;->RestoreScreenChange()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 89
    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditorID:I

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor(I)Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAttach: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditorID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "editorBUg"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 131
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 132
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    .line 133
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 135
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    return-object p1

    :cond_1
    const p3, 0x7f0b0055

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const p3, 0x7f080279

    .line 143
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 144
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const p3, 0x7f0800fa

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 146
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v1, 0x7f0800c6

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 147
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 148
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v3, 0x7f080186

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "curEdit"

    const-string v4, "onCreateView: mImageCurvesPanel"

    .line 150
    invoke-static {v3, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f0801f2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    .line 152
    iget-object v3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v4, 0x7f08016b

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->title:Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 155
    sput v3, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    .line 158
    iget-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz p3, :cond_2

    .line 161
    new-instance v5, Lcom/zui/gallery/filtershow/editors/EditorPanel$1;

    invoke-direct {v5, p0}, Lcom/zui/gallery/filtershow/editors/EditorPanel$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorPanel;)V

    invoke-virtual {p3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_2
    iget p3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditorID:I

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor(I)Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAttach:bug  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditorID:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "editorBUg"

    invoke-static {p3, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    if-eqz p2, :cond_10

    .line 243
    sget p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 p3, 0x6

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    if-ne p2, p3, :cond_3

    .line 244
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->title:Landroid/widget/TextView;

    const p3, 0x7f1000a5

    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_3
    sget p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p2, v7, :cond_4

    .line 246
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->title:Landroid/widget/TextView;

    const p3, 0x7f1001ae

    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :cond_4
    sget p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p2, v6, :cond_5

    .line 248
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->title:Landroid/widget/TextView;

    const p3, 0x7f1000fc

    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_5
    sget p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p2, v5, :cond_6

    .line 250
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->title:Landroid/widget/TextView;

    const p3, 0x7f1000fd

    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_6
    :goto_0
    sget p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 p3, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const-string v10, "onCreateView: "

    const-string v11, "LOOKID"

    if-ne p2, p3, :cond_7

    .line 253
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {p1, v2, p2, v4, v0}, Lcom/zui/gallery/filtershow/editors/Editor;->setUpEditorUI(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V

    goto :goto_2

    .line 256
    :cond_7
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 257
    sget p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p2, v7, :cond_8

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " mEditor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "mosicName"

    invoke-static {p3, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    goto :goto_1

    .line 261
    :cond_8
    sget p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p2, v6, :cond_9

    .line 262
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p2

    invoke-virtual {p2, v9}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    goto :goto_1

    .line 264
    :cond_9
    sget p2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p2, v5, :cond_a

    .line 265
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p2

    invoke-virtual {p2, v8}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    goto :goto_1

    .line 268
    :cond_a
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const-string p2, "onCreateView: 111"

    .line 269
    invoke-static {v11, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p2, v2, p1, v4, v0}, Lcom/zui/gallery/filtershow/editors/Editor;->setUpEditorUI(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;)V

    .line 274
    :goto_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 276
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p1, v7, :cond_b

    .line 277
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    goto :goto_3

    .line 278
    :cond_b
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p1, v6, :cond_c

    .line 279
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    goto :goto_3

    .line 280
    :cond_c
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne p1, v5, :cond_d

    .line 281
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 282
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    .line 285
    :cond_d
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->useUtilityPanel()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 289
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    if-eqz p1, :cond_e

    const-string p1, "onCreateView: pan1"

    .line 290
    invoke-static {v11, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->openUtilityPanel(Landroid/widget/LinearLayout;)V

    goto :goto_4

    :cond_e
    const-string p1, "onCreateView: pan2"

    .line 293
    invoke-static {v11, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mImageCurvesPanel:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/editors/Editor;->openUtilityPanel(Landroid/widget/LinearLayout;)V

    goto :goto_4

    :cond_f
    const-string p1, "onCreateView: pan3"

    .line 300
    invoke-static {v11, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_4
    if-eqz v1, :cond_11

    .line 305
    new-instance p1, Lcom/zui/gallery/filtershow/editors/EditorPanel$2;

    invoke-direct {p1, p0}, Lcom/zui/gallery/filtershow/editors/EditorPanel$2;-><init>(Lcom/zui/gallery/filtershow/editors/EditorPanel;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    :cond_11
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mMainView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->destoryView()V

    .line 401
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    if-eqz v0, :cond_0

    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    if-eqz v0, :cond_0

    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->detach()V

    .line 414
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public setEditor(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mEditorID:I

    return-void
.end method
