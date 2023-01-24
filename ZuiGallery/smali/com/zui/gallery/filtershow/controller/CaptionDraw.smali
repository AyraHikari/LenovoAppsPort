.class public Lcom/zui/gallery/filtershow/controller/CaptionDraw;
.super Ljava/lang/Object;
.source "CaptionDraw.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/Control;


# static fields
.field public static isEarsea:Z = false

.field public static mIndex:I = 0xa


# instance fields
.field activity:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field private captionList:Landroidx/recyclerview/widget/RecyclerView;

.field private mCaptionAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mContext:Landroid/content/Context;

.field mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mParameter:Lcom/zui/gallery/filtershow/controller/ParameterCaption;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setFunctionBtnState(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public RestoreScreenChange()V
    .locals 2

    .line 119
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget v0, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/CaptionDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    .line 124
    :cond_0
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaDraw:Z

    sput-boolean v0, Lcom/zui/gallery/filtershow/controller/CaptionDraw;->isEarsea:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080191

    .line 126
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/controller/CaptionDraw;->setFunctionBtnState(I)V

    :cond_1
    return-void
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V
    .locals 0

    .line 110
    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterCaption;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/CaptionDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterCaption;

    return-void
.end method

.method public setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 2

    const-string/jumbo v0, "wangcanCaption"

    const-string v1, "CaptionDraw.setUp======="

    .line 56
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 58
    iput-object p3, p0, Lcom/zui/gallery/filtershow/controller/CaptionDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/controller/CaptionDraw;->activity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 61
    check-cast p2, Lcom/zui/gallery/filtershow/controller/ParameterCaption;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/controller/CaptionDraw;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterCaption;

    const-string p2, "layout_inflater"

    .line 63
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0b0065

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    return-void
.end method

.method public updateUI()V
    .locals 0

    return-void
.end method
