.class public Lcom/zui/gallery/filtershow/category/CategoryPanel;
.super Landroidx/fragment/app/Fragment;
.source "CategoryPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CHECK_MIRROR:I = -0x2

.field public static final CHECK_RORATE:I = -0x1

.field public static final CLASSIC_LOOKS_STYLE:I = 0x0

.field public static CURRENT_LOOKS_STYLE:I = 0x0

.field public static final DELICACY_LOOKS_STYLE:I = 0x2

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "CategoryPanel"

.field private static final HORIZONTAL_16TO9:I = 0x9

.field private static final HORIZONTAL_1TO1:I = 0x7

.field private static final HORIZONTAL_4TO3:I = 0x8

.field private static final HORIZONTAL_FREEDOM:I = 0x6

.field private static final HORIZONTAL_MIRROR_ICON:I = 0xc

.field private static final HORIZONTAL_ORIGINAL:I = 0x5

.field private static final HORIZONTAL_ROTATE_ICON:I = 0xa

.field public static final MOVIE_LOOKS_STYLE:I = 0x3

.field private static final PARAMETER_TAG:Ljava/lang/String; = "currentPanel"

.field public static final PORTRAIT_LOOKS_STYLE:I = 0x1

.field private static final VERTICAL_1TO1:I = 0x2

.field private static final VERTICAL_3TO4:I = 0x3

.field private static final VERTICAL_9TO16:I = 0x4

.field private static final VERTICAL_FREEDOM:I = 0x1

.field private static final VERTICAL_MIRROR_ICON:I = 0xd

.field private static final VERTICAL_ORIGINAL:I = 0x0

.field private static final VERTICAL_ROTATE_ICON:I = 0xb

.field public static mCurrentData:I = 0x0

.field public static mutiClick:Z = false

.field public static panelName:Ljava/lang/String; = null

.field public static stat:I = -0x1


# instance fields
.field aspecMirrorVertical:Landroid/widget/ImageView;

.field aspecMirrorVerticalTextView:Landroid/widget/TextView;

.field aspect16to9Horizontal:Landroid/widget/ImageView;

.field aspect16to9HorizontalTextView:Landroid/widget/TextView;

.field aspect1to1Horizontal:Landroid/widget/ImageView;

.field aspect1to1HorizontalTextView:Landroid/widget/TextView;

.field aspect1to1Vertical:Landroid/widget/ImageView;

.field aspect1to1VerticalTextView:Landroid/widget/TextView;

.field aspect3to4Vertical:Landroid/widget/ImageView;

.field aspect3to4VerticalTextView:Landroid/widget/TextView;

.field aspect4to3Horizontal:Landroid/widget/ImageView;

.field aspect4to3HorizontalTextView:Landroid/widget/TextView;

.field aspect9to16Vertical:Landroid/widget/ImageView;

.field aspect9to16VerticalTextView:Landroid/widget/TextView;

.field aspectFreedomHorizontal:Landroid/widget/ImageView;

.field aspectFreedomHorizontalTextView:Landroid/widget/TextView;

.field aspectFreedomVertical:Landroid/widget/ImageView;

.field aspectFreedomVerticalTextView:Landroid/widget/TextView;

.field aspectMirrorHorizontal:Landroid/widget/ImageView;

.field aspectMirrorHorizontalTextView:Landroid/widget/TextView;

.field aspectOriginalHorizontal:Landroid/widget/ImageView;

.field aspectOriginalHorizontalTextView:Landroid/widget/TextView;

.field aspectOriginalVertical:Landroid/widget/ImageView;

.field aspectOriginalVerticalTextView:Landroid/widget/TextView;

.field aspectRotationHorizontal:Landroid/widget/ImageView;

.field aspectRotationHorizontalTextView:Landroid/widget/TextView;

.field aspectRotationVertical:Landroid/widget/ImageView;

.field aspectRotationVerticalTextView:Landroid/widget/TextView;

.field private classicStyleTxt:Landroid/widget/TextView;

.field private delicacyStyleTxt:Landroid/widget/TextView;

.field private isDelicacyAdapterRegist:Z

.field private isMovieAdapterRegist:Z

.field private isPrrtraitAdapterRegist:Z

.field private mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

.field private mCurrentAdapter:I

.field private mCurrentSelected:I

.field private mIsVertical:Z

.field private mMainView:Landroid/view/View;

.field private movieStyleTxt:Landroid/widget/TextView;

.field private panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

.field private portraitStyleTxt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x2

    .line 55
    iput v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mMainView:Landroid/view/View;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mIsVertical:Z

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    .line 459
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->isPrrtraitAdapterRegist:Z

    .line 460
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->isDelicacyAdapterRegist:Z

    .line 461
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->isMovieAdapterRegist:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/category/CategoryPanel;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->updateFilterTypeState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zui/gallery/filtershow/category/CategoryPanel;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Lcom/zui/gallery/filtershow/category/CategoryTrack;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/category/CategoryPanel;Lcom/zui/gallery/filtershow/category/CategoryTrack;Landroid/view/View;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initFilterAdapter(Lcom/zui/gallery/filtershow/category/CategoryTrack;Landroid/view/View;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->isPrrtraitAdapterRegist:Z

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->isPrrtraitAdapterRegist:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->isDelicacyAdapterRegist:Z

    return p0
.end method

.method static synthetic access$502(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->isDelicacyAdapterRegist:Z

    return p1
.end method

.method static synthetic access$600(Lcom/zui/gallery/filtershow/category/CategoryPanel;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->isMovieAdapterRegist:Z

    return p0
.end method

.method static synthetic access$602(Lcom/zui/gallery/filtershow/category/CategoryPanel;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->isMovieAdapterRegist:Z

    return p1
.end method

.method static synthetic access$700(Lcom/zui/gallery/filtershow/category/CategoryPanel;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    return p0
.end method

.method static synthetic access$702(Lcom/zui/gallery/filtershow/category/CategoryPanel;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    return p1
.end method

.method static synthetic access$800(Lcom/zui/gallery/filtershow/category/CategoryPanel;IZ)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->selection(IZ)V

    return-void
.end method

.method private initAspectPanelHorizontal(Landroid/widget/LinearLayout;)V
    .locals 2

    const v0, 0x7f080078

    .line 971
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalHorizontalTextView:Landroid/widget/TextView;

    const v0, 0x7f080070

    .line 972
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomHorizontalTextView:Landroid/widget/TextView;

    const v0, 0x7f080066

    .line 973
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1HorizontalTextView:Landroid/widget/TextView;

    const v0, 0x7f08006c

    .line 974
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect4to3HorizontalTextView:Landroid/widget/TextView;

    const v0, 0x7f080064

    .line 975
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect16to9HorizontalTextView:Landroid/widget/TextView;

    const v0, 0x7f08007e

    .line 976
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationHorizontalTextView:Landroid/widget/TextView;

    const v0, 0x7f080074

    .line 977
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectMirrorHorizontalTextView:Landroid/widget/TextView;

    const v0, 0x7f080073

    .line 979
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectMirrorHorizontal:Landroid/widget/ImageView;

    .line 980
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$9;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$9;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08007d

    .line 1012
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationHorizontal:Landroid/widget/ImageView;

    .line 1013
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$10;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$10;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080077

    .line 1047
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalHorizontal:Landroid/widget/ImageView;

    .line 1048
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$11;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$11;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08006f

    .line 1073
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomHorizontal:Landroid/widget/ImageView;

    .line 1074
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$12;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$12;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080065

    .line 1097
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1Horizontal:Landroid/widget/ImageView;

    .line 1098
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$13;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$13;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08006b

    .line 1121
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect4to3Horizontal:Landroid/widget/ImageView;

    .line 1122
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$14;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$14;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080063

    .line 1146
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect16to9Horizontal:Landroid/widget/ImageView;

    .line 1147
    new-instance v0, Lcom/zui/gallery/filtershow/category/CategoryPanel$15;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$15;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initAspectVerticalPanel(Landroid/widget/LinearLayout;)V
    .locals 2

    const v0, 0x7f08007a

    .line 1169
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalVerticalTextView:Landroid/widget/TextView;

    const v0, 0x7f080072

    .line 1170
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomVerticalTextView:Landroid/widget/TextView;

    const v0, 0x7f080068

    .line 1171
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1VerticalTextView:Landroid/widget/TextView;

    const v0, 0x7f08006a

    .line 1172
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect3to4VerticalTextView:Landroid/widget/TextView;

    const v0, 0x7f08006e

    .line 1173
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect9to16VerticalTextView:Landroid/widget/TextView;

    const v0, 0x7f080080

    .line 1174
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationVerticalTextView:Landroid/widget/TextView;

    const v0, 0x7f080076

    .line 1175
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspecMirrorVerticalTextView:Landroid/widget/TextView;

    const v0, 0x7f080075

    .line 1177
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspecMirrorVertical:Landroid/widget/ImageView;

    .line 1178
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$16;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$16;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08007f

    .line 1209
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationVertical:Landroid/widget/ImageView;

    .line 1210
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$17;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$17;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080079

    .line 1240
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalVertical:Landroid/widget/ImageView;

    .line 1241
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$18;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$18;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080071

    .line 1265
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomVertical:Landroid/widget/ImageView;

    .line 1266
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$19;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$19;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080067

    .line 1287
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1Vertical:Landroid/widget/ImageView;

    .line 1288
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$20;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$20;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080069

    .line 1309
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect3to4Vertical:Landroid/widget/ImageView;

    .line 1310
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$21;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$21;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08006d

    .line 1332
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect9to16Vertical:Landroid/widget/ImageView;

    .line 1333
    new-instance v0, Lcom/zui/gallery/filtershow/category/CategoryPanel$22;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$22;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFilterAdapter(Lcom/zui/gallery/filtershow/category/CategoryTrack;Landroid/view/View;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V
    .locals 1

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    .line 578
    invoke-virtual {p3, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setOrientation(I)V

    const v0, 0x7f0802e3

    .line 579
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 580
    instance-of v0, p2, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;

    if-eqz v0, :cond_0

    .line 581
    check-cast p2, Lcom/zui/gallery/filtershow/category/BouncyHScrollView;

    invoke-virtual {p3, p2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setScrollView(Landroid/view/View;)V

    goto :goto_0

    .line 582
    :cond_0
    instance-of v0, p2, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 583
    check-cast p2, Landroid/widget/ScrollView;

    invoke-virtual {p3, p2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setScrollView(Landroid/view/View;)V

    .line 585
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->setNewAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 586
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private selection(IZ)V
    .locals 5

    .line 784
    sput p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropSelected:I

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cropPanel"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0500eb

    const v3, 0x7f0500ea

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 931
    :pswitch_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspecMirrorVertical:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 932
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_0

    .line 934
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspecMirrorVerticalTextView:Landroid/widget/TextView;

    .line 935
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 934
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 937
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspecMirrorVerticalTextView:Landroid/widget/TextView;

    .line 938
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 937
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 920
    :pswitch_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectMirrorHorizontal:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 921
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_1

    .line 923
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectMirrorHorizontalTextView:Landroid/widget/TextView;

    .line 924
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 923
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 926
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectMirrorHorizontalTextView:Landroid/widget/TextView;

    .line 927
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 926
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 909
    :pswitch_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationVertical:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 910
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_2

    .line 912
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationVerticalTextView:Landroid/widget/TextView;

    .line 913
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 912
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 915
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationVerticalTextView:Landroid/widget/TextView;

    .line 916
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 915
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 898
    :pswitch_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationHorizontal:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 899
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_3

    .line 901
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationHorizontalTextView:Landroid/widget/TextView;

    .line 902
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 901
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 904
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectRotationHorizontalTextView:Landroid/widget/TextView;

    .line 905
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 904
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 887
    :pswitch_4
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect16to9Horizontal:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 888
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_4

    .line 890
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect16to9HorizontalTextView:Landroid/widget/TextView;

    .line 891
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 890
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 893
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect16to9HorizontalTextView:Landroid/widget/TextView;

    .line 894
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 893
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 876
    :pswitch_5
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect4to3Horizontal:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 877
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_5

    .line 879
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect4to3HorizontalTextView:Landroid/widget/TextView;

    .line 880
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 879
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 882
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect4to3HorizontalTextView:Landroid/widget/TextView;

    .line 883
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 882
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 865
    :pswitch_6
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1Horizontal:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 866
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_6

    .line 868
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1HorizontalTextView:Landroid/widget/TextView;

    .line 869
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 868
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 871
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1HorizontalTextView:Landroid/widget/TextView;

    .line 872
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 871
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 854
    :pswitch_7
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomHorizontal:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 855
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_7

    .line 857
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomHorizontalTextView:Landroid/widget/TextView;

    .line 858
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 857
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 860
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomHorizontalTextView:Landroid/widget/TextView;

    .line 861
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 860
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 843
    :pswitch_8
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalHorizontal:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 844
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_8

    .line 846
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalHorizontalTextView:Landroid/widget/TextView;

    .line 847
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 846
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 849
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalHorizontalTextView:Landroid/widget/TextView;

    .line 850
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 849
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 832
    :pswitch_9
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect9to16Vertical:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 833
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_9

    .line 835
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect9to16VerticalTextView:Landroid/widget/TextView;

    .line 836
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 835
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 838
    :cond_9
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect9to16VerticalTextView:Landroid/widget/TextView;

    .line 839
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 838
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 821
    :pswitch_a
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect3to4Vertical:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 822
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_a

    .line 824
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect3to4VerticalTextView:Landroid/widget/TextView;

    .line 825
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 824
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 827
    :cond_a
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect3to4VerticalTextView:Landroid/widget/TextView;

    .line 828
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 827
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 810
    :pswitch_b
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1Vertical:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 811
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_b

    .line 813
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1VerticalTextView:Landroid/widget/TextView;

    .line 814
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 813
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 816
    :cond_b
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspect1to1VerticalTextView:Landroid/widget/TextView;

    .line 817
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 816
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 799
    :pswitch_c
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomVertical:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 800
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_c

    .line 802
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomVerticalTextView:Landroid/widget/TextView;

    .line 803
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 802
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 805
    :cond_c
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectFreedomVerticalTextView:Landroid/widget/TextView;

    .line 806
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 805
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 788
    :pswitch_d
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalVertical:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 789
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    if-eqz p2, :cond_d

    .line 791
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalVerticalTextView:Landroid/widget/TextView;

    .line 792
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 791
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 794
    :cond_d
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->aspectOriginalVerticalTextView:Landroid/widget/TextView;

    .line 795
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 794
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateFilterTypeState(I)V
    .locals 3

    const v0, 0x7f0500e4

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->classicStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->portraitStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 613
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->delicacyStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->movieStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 605
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->classicStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->portraitStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->delicacyStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 608
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->movieStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 599
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->classicStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->portraitStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 601
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->delicacyStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 602
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->movieStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 593
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->classicStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 594
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->portraitStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 595
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->delicacyStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->movieStyleTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createCategoryPanel(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCategoryPanel: bbb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOOKID"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const/4 v2, 0x1

    const-string v3, "currentPanel"

    const/4 v4, 0x0

    if-ne v0, v2, :cond_6

    .line 254
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 255
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    .line 257
    sget-boolean v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    if-eqz v6, :cond_0

    .line 258
    sget-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    iput-boolean v2, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    goto :goto_1

    .line 260
    :cond_0
    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->getCropType()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 261
    iget-boolean v5, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    goto :goto_1

    .line 263
    :cond_1
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 264
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    .line 269
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " vertical "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cropPanel"

    invoke-static {v5, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-boolean v2, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    if-eqz v2, :cond_4

    const v2, 0x7f0b0047

    goto :goto_2

    :cond_4
    const v2, 0x7f0b0046

    :goto_2
    const-string v5, "createCategoryPanel: aaa"

    .line 273
    invoke-static {v1, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 275
    iput-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mMainView:Landroid/view/View;

    if-eqz p3, :cond_5

    .line 277
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 278
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 280
    :cond_5
    iget-boolean v0, v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initGeometry(Landroid/widget/LinearLayout;Z)V

    .line 283
    :cond_6
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const/4 v1, 0x2

    const v2, 0x7f0b004a

    if-ne v0, v1, :cond_8

    .line 284
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 287
    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mMainView:Landroid/view/View;

    if-eqz p3, :cond_7

    .line 291
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 292
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 297
    :cond_7
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initLooksPanel(Landroid/widget/LinearLayout;)V

    .line 300
    :cond_8
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    if-nez v0, :cond_a

    .line 301
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 304
    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mMainView:Landroid/view/View;

    if-eqz p3, :cond_9

    .line 306
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 307
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 310
    :cond_9
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initBorderPanel(Landroid/widget/LinearLayout;)V

    .line 312
    :cond_a
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    const-string v0, "bottomTEST"

    const-string v1, "createCategoryPanel: caijian"

    .line 313
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 317
    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mMainView:Landroid/view/View;

    if-eqz p3, :cond_b

    .line 319
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 320
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 323
    :cond_b
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initGeomeryPanel(Landroid/widget/LinearLayout;)V

    .line 325
    :cond_c
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const/4 v1, 0x7

    const v2, 0x7f0b0056

    if-ne v0, v1, :cond_e

    .line 326
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 329
    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mMainView:Landroid/view/View;

    if-eqz p3, :cond_d

    .line 331
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 332
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 335
    :cond_d
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initFiltersAddPanel(Landroid/widget/LinearLayout;)V

    .line 337
    :cond_e
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    if-eqz p3, :cond_f

    .line 345
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fixtest"

    const-string v5, "createCategoryPanel:draw "

    .line 346
    invoke-static {v1, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 352
    :cond_f
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const v0, 0x7f0b0061

    .line 353
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 354
    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mMainView:Landroid/view/View;

    if-eqz p3, :cond_10

    .line 356
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 357
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 359
    :cond_10
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initFiltersPanel(Landroid/widget/LinearLayout;)V

    .line 362
    :cond_11
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    .line 363
    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 366
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mMainView:Landroid/view/View;

    if-eqz p3, :cond_12

    .line 368
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 369
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->loadAdapter(I)V

    .line 372
    :cond_12
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initCaptionPanel(Landroid/widget/LinearLayout;)V

    .line 374
    :cond_13
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mMainView:Landroid/view/View;

    return-object p1
.end method

.method public initBorderPanel(Landroid/widget/LinearLayout;)V
    .locals 4

    const v0, 0x7f08021b

    .line 622
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0802e3

    .line 624
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 625
    instance-of v3, v1, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    if-eqz v3, :cond_0

    .line 626
    check-cast v1, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    .line 627
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 628
    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setOrientation(I)V

    .line 629
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setScrollView(Landroid/view/View;)V

    .line 630
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->setAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 631
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_1

    .line 634
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 635
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 636
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    :cond_1
    :goto_0
    const v0, 0x7f080051

    .line 639
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/IconView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

    if-eqz p1, :cond_2

    .line 641
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/category/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->updateAddButtonVisibility()V

    :cond_2
    return-void
.end method

.method public initCaptionPanel(Landroid/widget/LinearLayout;)V
    .locals 4

    const v0, 0x7f08021d

    .line 697
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0802e9

    .line 698
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 699
    instance-of v3, v1, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    if-eqz v3, :cond_0

    .line 700
    check-cast v1, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    .line 701
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 702
    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setOrientation(I)V

    .line 704
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setScrollView(Landroid/view/View;)V

    .line 706
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->setAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 707
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    goto :goto_0

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_1

    .line 710
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 711
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 712
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    :cond_1
    :goto_0
    const v0, 0x7f080052

    .line 715
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/IconView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

    if-eqz p1, :cond_2

    .line 717
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/category/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->updateAddButtonVisibility()V

    :cond_2
    return-void
.end method

.method public initDraw(Landroid/widget/LinearLayout;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 724
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initAspectVerticalPanel(Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 726
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initAspectPanelHorizontal(Landroid/widget/LinearLayout;)V

    :goto_0
    return-void
.end method

.method public initFiltersAddPanel(Landroid/widget/LinearLayout;)V
    .locals 4

    const v0, 0x7f08021d

    .line 671
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0802e9

    .line 672
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 673
    instance-of v3, v1, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    if-eqz v3, :cond_0

    .line 674
    check-cast v1, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    .line 675
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 676
    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setOrientation(I)V

    .line 678
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setScrollView(Landroid/view/View;)V

    .line 680
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->setAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 681
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    goto :goto_0

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 685
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 686
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    :cond_1
    :goto_0
    const v0, 0x7f080052

    .line 689
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/IconView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

    if-eqz p1, :cond_2

    .line 691
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/category/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->updateAddButtonVisibility()V

    :cond_2
    return-void
.end method

.method public initFiltersPanel(Landroid/widget/LinearLayout;)V
    .locals 2

    const v0, 0x7f0802d8

    .line 379
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0802d5

    .line 381
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 382
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$1;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802d4

    .line 399
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 400
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$2;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802d6

    .line 418
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 419
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$3;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802d7

    .line 433
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 434
    new-instance v0, Lcom/zui/gallery/filtershow/category/CategoryPanel$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$4;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initGeomeryPanel(Landroid/widget/LinearLayout;)V
    .locals 4

    const v0, 0x7f08021b

    .line 647
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0802e3

    .line 648
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 649
    instance-of v3, v1, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    if-eqz v3, :cond_0

    .line 650
    check-cast v1, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    .line 651
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 652
    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setOrientation(I)V

    .line 653
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setScrollView(Landroid/view/View;)V

    .line 654
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->setAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 655
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    goto :goto_0

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_1

    .line 658
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 659
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 660
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setContainer(Landroid/view/View;)V

    :cond_1
    :goto_0
    const v0, 0x7f080051

    .line 663
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/IconView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

    if-eqz p1, :cond_2

    .line 665
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/category/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->updateAddButtonVisibility()V

    :cond_2
    return-void
.end method

.method public initGeometry(Landroid/widget/LinearLayout;Z)V
    .locals 8

    .line 732
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 733
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor()Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    const-string v1, "cropPanel"

    const/4 v2, 0x6

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    .line 735
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->getCropType()I

    move-result v6

    if-ne v6, v4, :cond_0

    const/16 v6, 0xb

    .line 736
    iput v6, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->getCropType()I

    move-result v6

    if-ne v6, v3, :cond_1

    const/16 v6, 0xd

    .line 738
    iput v6, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    goto :goto_0

    .line 740
    :cond_1
    iput v5, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    .line 742
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " value 111 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initAspectVerticalPanel(Landroid/widget/LinearLayout;)V

    goto :goto_2

    .line 745
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->getCropType()I

    move-result v6

    if-ne v6, v4, :cond_3

    const/16 v6, 0xa

    .line 746
    iput v6, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    goto :goto_1

    .line 747
    :cond_3
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->getCropType()I

    move-result v6

    if-ne v6, v3, :cond_4

    const/16 v6, 0xc

    .line 748
    iput v6, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    goto :goto_1

    .line 750
    :cond_4
    iput v2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    .line 752
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " value 222 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initAspectPanelHorizontal(Landroid/widget/LinearLayout;)V

    .line 756
    :goto_2
    sget-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    if-eqz p1, :cond_5

    .line 757
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropSelected:I

    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    .line 760
    :cond_5
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->getCropType()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v4, :cond_7

    .line 761
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->getCropType()I

    move-result p1

    if-ne p1, v3, :cond_6

    goto :goto_3

    :cond_6
    move p1, v1

    goto :goto_4

    :cond_7
    :goto_3
    move p1, v5

    :goto_4
    if-eqz p1, :cond_8

    .line 763
    sget-boolean v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;->isMirrorRotationCancel:Z

    if-eqz v0, :cond_8

    .line 764
    sput-boolean v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->isMirrorRotationCancel:Z

    .line 765
    iput v2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    if-eqz p2, :cond_9

    .line 767
    iput v5, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    goto :goto_5

    :cond_8
    if-nez p1, :cond_9

    .line 770
    sget-boolean p1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->isMirrorRotationCancel:Z

    if-eqz p1, :cond_9

    .line 771
    sput-boolean v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->isMirrorRotationCancel:Z

    .line 775
    :cond_9
    :goto_5
    iget p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentSelected:I

    invoke-direct {p0, p1, v5}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->selection(IZ)V

    return-void
.end method

.method public initLooksPanel(Landroid/widget/LinearLayout;)V
    .locals 4

    .line 464
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const v1, 0x7f08021b

    .line 465
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 466
    check-cast v1, Lcom/zui/gallery/filtershow/category/CategoryTrack;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    .line 467
    iget v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f08022f

    .line 468
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 469
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0800d6

    .line 470
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->classicStyleTxt:Landroid/widget/TextView;

    const v2, 0x7f0802aa

    .line 471
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->portraitStyleTxt:Landroid/widget/TextView;

    const v2, 0x7f08013b

    .line 472
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->delicacyStyleTxt:Landroid/widget/TextView;

    const v2, 0x7f08024f

    .line 473
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->movieStyleTxt:Landroid/widget/TextView;

    .line 474
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCurrentLooksType()I

    move-result v1

    .line 475
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 476
    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->setAdapter(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    .line 477
    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->updateFilterTypeState(I)V

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->classicStyleTxt:Landroid/widget/TextView;

    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$5;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;Landroid/widget/LinearLayout;Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->portraitStyleTxt:Landroid/widget/TextView;

    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$6;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;Landroid/widget/LinearLayout;Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->delicacyStyleTxt:Landroid/widget/TextView;

    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$7;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;Landroid/widget/LinearLayout;Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->movieStyleTxt:Landroid/widget/TextView;

    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel$8;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;Landroid/widget/LinearLayout;Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {p0, v0, p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->initFilterAdapter(Lcom/zui/gallery/filtershow/category/CategoryTrack;Landroid/view/View;Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    const v0, 0x7f080051

    .line 551
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/IconView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

    if-eqz p1, :cond_1

    .line 553
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/category/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->updateAddButtonVisibility()V

    :cond_1
    return-void
.end method

.method public loadAdapter(I)V
    .locals 4

    .line 121
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCategoryPanel: ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cropTEST"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 220
    :pswitch_1
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCaptionAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz p1, :cond_0

    const/16 v1, 0xa

    .line 222
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateCategories()V

    goto/16 :goto_0

    .line 191
    :pswitch_2
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getDrawAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    const/4 v1, 0x3

    .line 194
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    .line 195
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto/16 :goto_0

    .line 180
    :pswitch_3
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getDrawAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "fixtest"

    const-string v3, "loadAdapter: DRAW"

    .line 182
    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    .line 185
    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    .line 186
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto/16 :goto_0

    .line 172
    :pswitch_4
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryFiltersAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz p1, :cond_1

    const/4 v1, 0x7

    .line 174
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    .line 176
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateCategories()V

    goto :goto_0

    .line 164
    :pswitch_5
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCropAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 166
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    .line 213
    :pswitch_6
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryVersionsAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    .line 215
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    goto :goto_0

    .line 205
    :pswitch_7
    sget p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->CURRENT_LOOKS_STYLE:I

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz p1, :cond_2

    .line 207
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    .line 209
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateCategories()V

    goto :goto_0

    .line 125
    :pswitch_8
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCurrentLooksType()I

    move-result p1

    .line 126
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateCategories()V

    goto :goto_0

    .line 150
    :pswitch_9
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCropAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 152
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    .line 137
    :pswitch_a
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryBordersAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    .line 141
    :cond_4
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateCategories()V

    .line 234
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->updateAddButtonVisibility()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1356
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1357
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    iget p1, p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1360
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1375
    :cond_0
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mScrollIndex:I

    if-eq p1, v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getCount()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cateinto"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getView()Landroid/view/View;

    move-result-object p1

    .line 1380
    instance-of v0, p1, Lcom/zui/gallery/filtershow/category/CategoryView;

    if-eqz v0, :cond_1

    .line 1381
    new-instance v0, Lcom/zui/gallery/filtershow/category/CategoryPanel$23;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel$23;-><init>(Lcom/zui/gallery/filtershow/category/CategoryPanel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAttach: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fixtest"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->loadAdapter(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 946
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f080051

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->addCurrentVersion()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 247
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->createCategoryPanel(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 5

    .line 560
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 561
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    if-eqz v0, :cond_3

    .line 562
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v0

    .line 563
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v1

    .line 564
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v2

    .line 566
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->unRegisterDataObserver(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 567
    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-virtual {v3, v0}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->unRegisterDataObserver(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 568
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->unRegisterDataObserver(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 569
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->panel:Lcom/zui/gallery/filtershow/category/CategoryTrack;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/category/CategoryTrack;->unRegisterDataObserver(Lcom/zui/gallery/filtershow/category/CategoryAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 239
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    iget v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    const-string v1, "currentPanel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public refreshAdapter()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->initializeSelection(I)V

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAdapter(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentAdapter:I

    .line 104
    sput p1, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mCurrentData:I

    return-void
.end method

.method public updateAddButtonVisibility()V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

    if-nez v0, :cond_0

    return-void

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 960
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isShowingImageStatePanel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->showAddButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/IconView;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v0, :cond_2

    .line 963
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getAddButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/IconView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategoryPanel;->mAddButton:Lcom/zui/gallery/filtershow/category/IconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/IconView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
