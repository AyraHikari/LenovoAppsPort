.class public Lcom/zui/gallery/filtershow/editors/EditorDraw;
.super Lcom/zui/gallery/filtershow/editors/ParametricEditor;
.source "EditorDraw.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/FilterView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/editors/EditorDraw$generatePaint;
    }
.end annotation


# static fields
.field public static final ID:I = 0x7f080174

.field private static final LOGTAG:Ljava/lang/String; = "EditorDraw"

.field private static final MODE_COLOR:I = 0x2

.field private static final MODE_SIZE:I = 0x0

.field private static final MODE_SIZEE:I = 0x0

.field private static final MODE_STYLE:I = 0x1

.field public static drawPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

.field public static drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

.field public static isEraser:Z

.field public static isMosaic:Z

.field private static mbitmap:Landroid/graphics/Bitmap;


# instance fields
.field brushIcons:[I

.field mBasColors:[I

.field mDrawEdit:Landroid/widget/RadioButton;

.field private mDrawString:Ljava/lang/String;

.field public mImageDraw:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

.field mMosaicEdit:Landroid/widget/RadioButton;

.field private mParameterString:Ljava/lang/String;

.field mRadioGroup:Landroid/widget/RadioGroup;

.field private mSelectedColorButton:I

.field private mTabletUI:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-direct {v0}, Lcom/zui/gallery/ui/mosaic/CPaint;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    .line 83
    new-instance v0, Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-direct {v0}, Lcom/zui/gallery/ui/mosaic/CPaint;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    const/4 v0, 0x1

    .line 84
    sput-boolean v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isEraser:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080174

    .line 113
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;-><init>(I)V

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 92
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->brushIcons:[I

    new-array v0, v0, [I

    .line 100
    sget v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->DEFAULT_MENU_COLOR1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->DEFAULT_MENU_COLOR2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->DEFAULT_MENU_COLOR3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->DEFAULT_MENU_COLOR4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->DEFAULT_MENU_COLOR5:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mBasColors:[I

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mDrawString:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0700a2
        0x7f0700a5
        0x7f0700a3
        0x7f0700a4
        0x7f0700a6
    .end array-data
.end method

.method public static MosaicState(Landroid/graphics/Bitmap;F)Landroid/graphics/BitmapShader;
    .locals 11

    .line 319
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 323
    new-array v10, v2, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v10

    move v5, v0

    move v8, v0

    move v9, v1

    .line 324
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 325
    sget-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSave:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x41900000    # 18.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 327
    invoke-static {v10, v0, v1, p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mosaic([IIII)[I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x12

    .line 329
    invoke-static {v10, v0, v1, p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mosaic([IIII)[I

    move-result-object p1

    :goto_0
    move-object v3, p1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v5, v0

    move v8, v0

    move v9, v1

    .line 331
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 333
    new-instance p1, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p0, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object p1
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .line 72
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mbitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 72
    sput-object p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mbitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static generateDrawPaint(Landroid/graphics/Bitmap;)Lcom/zui/gallery/ui/mosaic/CPaint;
    .locals 4

    .line 278
    new-instance v0, Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-direct {v0}, Lcom/zui/gallery/ui/mosaic/CPaint;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0x6a

    .line 281
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setColor(I)V

    .line 282
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 283
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeMiter(F)V

    .line 284
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 285
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 286
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 289
    sget v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mbitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 290
    invoke-static {v1, v2}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->MosaicState(Landroid/graphics/Bitmap;F)Landroid/graphics/BitmapShader;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 293
    invoke-static {p0, v2}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->MosaicState(Landroid/graphics/Bitmap;F)Landroid/graphics/BitmapShader;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static generateDrawPaintSave(Landroid/graphics/Bitmap;F)Lcom/zui/gallery/ui/mosaic/CPaint;
    .locals 3

    .line 302
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    const/16 v1, 0xff

    const/16 v2, 0x6a

    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setColor(I)V

    .line 303
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 304
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeMiter(F)V

    .line 305
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 307
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    if-eqz p0, :cond_0

    .line 311
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->MosaicState(Landroid/graphics/Bitmap;F)Landroid/graphics/BitmapShader;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 314
    :cond_0
    sget-object p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaintSave:Lcom/zui/gallery/ui/mosaic/CPaint;

    return-object p0
.end method

.method private static mosaic([IIII)[I
    .locals 16

    move-object/from16 v0, p0

    .line 339
    array-length v1, v0

    div-int v1, v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 340
    array-length v2, v0

    div-int v2, v2, p2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_7

    add-int v5, v4, p3

    add-int/lit8 v5, v5, -0x1

    if-gt v5, v1, :cond_0

    add-int/lit8 v5, p3, -0x1

    goto :goto_1

    :cond_0
    sub-int v5, v1, v4

    :goto_1
    move v6, v3

    :goto_2
    if-ge v6, v2, :cond_6

    add-int v7, v6, p3

    add-int/lit8 v7, v7, -0x1

    if-gt v7, v2, :cond_1

    add-int/lit8 v7, p3, -0x1

    goto :goto_3

    :cond_1
    sub-int v7, v2, v6

    :goto_3
    move v8, v3

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_4
    if-gt v8, v5, :cond_3

    move v13, v3

    :goto_5
    if-gt v13, v7, :cond_2

    add-int v14, v4, v8

    mul-int v14, v14, p1

    add-int/2addr v14, v6

    add-int/2addr v14, v13

    .line 365
    aget v15, v0, v14

    shr-int/lit8 v15, v15, 0x18

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v9, v15

    .line 366
    aget v15, v0, v14

    shr-int/lit8 v15, v15, 0x10

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v10, v15

    .line 367
    aget v15, v0, v14

    shr-int/lit8 v15, v15, 0x8

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v11, v15

    .line 368
    aget v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v12, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v13, v7, 0x1

    mul-int/2addr v8, v13

    .line 372
    div-int/2addr v9, v8

    .line 373
    div-int/2addr v10, v8

    .line 374
    div-int/2addr v11, v8

    .line 375
    div-int/2addr v12, v8

    move v8, v3

    :goto_6
    if-gt v8, v5, :cond_5

    move v13, v3

    :goto_7
    if-gt v13, v7, :cond_4

    shl-int/lit8 v14, v9, 0x18

    shl-int/lit8 v15, v10, 0x10

    or-int/2addr v14, v15

    shl-int/lit8 v15, v11, 0x8

    or-int/2addr v14, v15

    or-int/2addr v14, v12

    add-int v15, v4, v8

    mul-int v15, v15, p1

    add-int/2addr v15, v6

    add-int/2addr v15, v13

    .line 379
    aput v14, v0, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 7

    const v0, 0x7f080060

    .line 411
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 416
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 417
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v1, 0x7f0c0004

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 418
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 419
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 420
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 422
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 423
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f080155

    if-eq v5, v6, :cond_1

    .line 424
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    :cond_2
    new-instance p1, Lcom/zui/gallery/filtershow/editors/EditorDraw$2;

    invoke-direct {p1, p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw$2;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_1

    .line 436
    :cond_3
    new-instance p1, Lcom/zui/gallery/filtershow/editors/EditorDraw$3;

    invoke-direct {p1, p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw$3;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 445
    :goto_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 446
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->onShowMenu(Landroid/widget/PopupMenu;)V

    return-void
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->getDrawRep()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mDrawString:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 120
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageDraw:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displayDrawLook()V

    .line 121
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mDrawString:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p2, ""

    if-nez p1, :cond_1

    return-object p2

    .line 126
    :cond_1
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    .line 129
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mParameterString:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 130
    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mParameterString:Ljava/lang/String;

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getValueString()Ljava/lang/String;

    move-result-object p2

    .line 135
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    instance-of p3, p3, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 136
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    check-cast p3, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    .line 137
    iget-boolean v1, p3, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isColorClick:Z

    if-eqz v1, :cond_3

    .line 138
    iput-boolean v0, p3, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isColorClick:Z

    const/4 p3, 0x2

    .line 139
    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setPramMode(I)V

    .line 140
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getCurrentParam()Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p3

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mEditControl:Landroid/view/View;

    invoke-virtual {p0, p3, v1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    .line 141
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {p3}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    .line 142
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 145
    :cond_3
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    instance-of p3, p3, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    if-eqz p3, :cond_4

    .line 146
    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    check-cast p3, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    .line 147
    iget-boolean v1, p3, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->isBackToSize:Z

    if-eqz v1, :cond_4

    .line 148
    iput-boolean v0, p3, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;->isBackToSize:Z

    const/4 p3, 0x3

    .line 149
    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setPramMode(I)V

    .line 150
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getCurrentParam()Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mEditControl:Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    .line 151
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    .line 152
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 156
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageDraw:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displayDrawLook()V

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mParameterString:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public clearDrawing()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    check-cast v0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    .line 493
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->resetParameter()V

    .line 494
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    return-void
.end method

.method public computeIcon(ILcom/zui/gallery/filtershow/controller/BitmapCaller;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->brushIcons:[I

    aget p1, v1, p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 530
    invoke-interface {p2, p1}, Lcom/zui/gallery/filtershow/controller/BitmapCaller;->available(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 162
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    invoke-direct {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageDraw:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mView:Landroid/view/View;

    .line 163
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 164
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageDraw:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->setEditor(Lcom/zui/gallery/filtershow/editors/EditorDraw;)V

    return-void
.end method

.method public getBrushIcon(I)I
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->brushIcons:[I

    aget p1, v0, p1

    return p1
.end method

.method getDrawRep()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;
    .locals 2

    .line 520
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 521
    instance-of v1, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    if-eqz v1, :cond_0

    .line 522
    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()V
    .locals 2

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ovwrerrr"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 2

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f080159

    .line 216
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f080154

    .line 217
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mDrawEdit:Landroid/widget/RadioButton;

    const v1, 0x7f08024b

    .line 218
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mMosaicEdit:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    .line 219
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 220
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mDrawEdit:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mMosaicEdit:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 226
    new-instance p1, Lcom/zui/gallery/filtershow/editors/EditorDraw$generatePaint;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/zui/gallery/filtershow/editors/EditorDraw$generatePaint;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;Lcom/zui/gallery/filtershow/editors/EditorDraw$1;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 227
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorDraw$generatePaint;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 6

    const-string v0, "fixtest"

    const-string v1, "reflectCurrentFilter: fff"

    .line 170
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->reflectCurrentFilter()V

    .line 172
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTypeCode()I

    move-result v1

    .line 174
    sget v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    move v1, v3

    goto :goto_0

    .line 176
    :cond_0
    sget v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    .line 178
    :cond_1
    sget v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    const/4 v1, 0x4

    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 181
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    if-eqz v0, :cond_6

    .line 182
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    .line 183
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageDraw:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->setFilterDrawRepresentation(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;)V

    .line 184
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 185
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mTabletUI:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    if-eqz v1, :cond_3

    .line 187
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;->setDrawRepresentation(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;)V

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x1

    .line 198
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/zui/gallery/filtershow/controller/Parameter;->setFilterView(Lcom/zui/gallery/filtershow/controller/FilterView;)V

    .line 199
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setPramMode(I)V

    .line 200
    iget-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    const v5, 0x7f1000ec

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mParameterString:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 202
    sput-boolean v2, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    goto :goto_1

    .line 204
    :cond_5
    sput-boolean v3, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    .line 206
    :goto_1
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getCurrentParam()Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mEditControl:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    .line 208
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method protected selectMenuItem(Landroid/view/MenuItem;)V
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;

    .line 451
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->getDrawRep()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 468
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setPramMode(I)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    .line 465
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setPramMode(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    .line 471
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->setPramMode(I)V

    goto :goto_0

    .line 459
    :pswitch_3
    sget-object v1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->drawPaint:Lcom/zui/gallery/ui/mosaic/CPaint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Lcom/zui/gallery/ui/mosaic/CPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 460
    sput-boolean v2, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isEraser:Z

    .line 474
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080155

    if-eq v1, v2, :cond_1

    .line 475
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mParameterString:Ljava/lang/String;

    .line 476
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->updateText()V

    .line 482
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getCurrentParam()Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mEditControl:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    .line 487
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/Control;->updateUI()V

    .line 488
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f080155
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    const p1, 0x7f0802b0

    .line 504
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mSeekBar:Landroid/widget/SeekBar;

    .line 505
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    .line 506
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 509
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0054

    .line 510
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 513
    new-instance p2, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;-><init>(Lcom/zui/gallery/filtershow/editors/EditorDraw;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mTabletUI:Lcom/zui/gallery/filtershow/editors/EditorDrawTabletUI;

    .line 514
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100175

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mDrawString:Ljava/lang/String;

    .line 515
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->setMenuIcon(Z)V

    return-void
.end method

.method public showsSeekBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
