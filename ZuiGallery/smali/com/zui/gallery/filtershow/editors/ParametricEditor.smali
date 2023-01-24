.class public Lcom/zui/gallery/filtershow/editors/ParametricEditor;
.super Lcom/zui/gallery/filtershow/editors/Editor;
.source "ParametricEditor.java"


# static fields
.field public static ID:I = 0x7f080178

.field public static final MINIMUM_HEIGHT:I = 0x320

.field public static final MINIMUM_WIDTH:I = 0x258

.field static landscapeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static portraitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field mActionButton:Landroid/view/View;

.field protected mControl:Lcom/zui/gallery/filtershow/controller/Control;

.field mEditControl:Landroid/view/View;

.field private mLayoutID:I

.field private mViewID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    .line 79
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterSaturation;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/SliderSaturation;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterSaturation;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/SliderSaturation;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterHue;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/SliderHue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterHue;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/SliderHue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/SliderOpacity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/SliderOpacity;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterBrightness;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/SliderBrightness;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterBrightness;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/SliderBrightness;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterColor;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/ColorChooser;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterColor;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/ColorChooser;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/BasicSlider;

    const-string v2, "ParameterInteger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/TitledSlider;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/ActionSlider;

    const-string v2, "ParameterActionAndInt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/ActionSlider;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/StyleChooser;

    const-string v2, "ParameterStyles"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/StyleChooser;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    const-string v2, "ParameterIntegerMosaic"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    const-string v2, "ParameterIntegerDraw"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    const-class v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterColorDraw;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/ColorChooserDraw;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/CaptionDraw;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/zui/gallery/filtershow/controller/ParameterCaption;->sParameterType:Ljava/lang/String;

    const-class v2, Lcom/zui/gallery/filtershow/controller/CaptionDraw;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    sget v0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->ID:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    const-string v0, "ParametricEditor"

    .line 70
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    const-string p1, "ParametricEditor"

    .line 70
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    const-string p1, "ParametricEditor"

    .line 70
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->LOGTAG:Ljava/lang/String;

    .line 126
    iput p2, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mLayoutID:I

    .line 127
    iput p3, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mViewID:I

    return-void
.end method

.method static getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 110
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/view/ViewGroup;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static useCompact(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public calculateUserMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 134
    iget-byte v0, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mShowParameter:B

    sget-byte v1, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->SHOW_VALUE_INT:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result p1

    and-int/2addr p1, v0

    const-string v0, " "

    const-string v1, ""

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    .line 137
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getStateRepresentation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 139
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 142
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method protected control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V
    .locals 4

    .line 207
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/Parameter;->getParameterType()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    invoke-static {v1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->useCompact(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->landscapeMap:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "ParametricEditor"

    if-eqz v1, :cond_1

    .line 213
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/controller/Control;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    .line 214
    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/controller/Parameter;->setController(Lcom/zui/gallery/filtershow/controller/Control;)V

    const-string v0, "TestBUg"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "control: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-interface {v0, p2, p1, p0}, Lcom/zui/gallery/filtershow/controller/Control;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Error in loading Control "

    .line 218
    invoke-static {v2, p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 221
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to find class for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object p1, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->portraitMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 149
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 150
    iget p1, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mViewID:I

    iget p2, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mLayoutID:I

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->unpack(II)V

    return-void
.end method

.method public getControls()[Lcom/zui/gallery/filtershow/controller/Control;
    .locals 3

    .line 166
    new-instance v0, Lcom/zui/gallery/filtershow/controller/BasicSlider;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/controller/BasicSlider;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/zui/gallery/filtershow/controller/Control;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method protected getParameterToEdit(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/controller/Parameter;
    .locals 1

    .line 180
    instance-of v0, p0, Lcom/zui/gallery/filtershow/controller/Parameter;

    if-eqz v0, :cond_0

    .line 181
    move-object p1, p0

    check-cast p1, Lcom/zui/gallery/filtershow/controller/Parameter;

    return-object p1

    .line 182
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/controller/Parameter;

    if-eqz v0, :cond_1

    .line 183
    check-cast p1, Lcom/zui/gallery/filtershow/controller/Parameter;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
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

.method public reflectCurrentFilter()V
    .locals 2

    const-string v0, "fixtest"

    const-string v1, "reflectCurrentFilter: bbb"

    .line 155
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 157
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    .line 160
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mControl:Lcom/zui/gallery/filtershow/controller/Control;

    invoke-interface {v1, v0}, Lcom/zui/gallery/filtershow/controller/Control;->setPrameter(Lcom/zui/gallery/filtershow/controller/Parameter;)V

    :cond_0
    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 190
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mActionButton:Landroid/view/View;

    .line 191
    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mEditControl:Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->getParameterToEdit(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/controller/Parameter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->control(Lcom/zui/gallery/filtershow/controller/Parameter;Landroid/view/View;)V

    goto :goto_0

    .line 197
    :cond_0
    new-instance p1, Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mSeekBar:Landroid/widget/SeekBar;

    .line 198
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    check-cast p2, Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/ParametricEditor;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_0
    return-void
.end method
