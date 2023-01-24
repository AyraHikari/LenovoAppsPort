.class public Lcom/zui/gallery/filtershow/filters/FiltersManager;
.super Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;
.source "FiltersManager.java"


# static fields
.field private static sHighresInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

.field private static sInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

.field private static sPreviewInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->init()V

    return-void
.end method

.method public static getHighresManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sHighresInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sHighresInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sHighresInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    return-object v0
.end method

.method public static getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;
    .locals 1

    .line 41
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    return-object v0
.end method

.method public static getPreviewManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sPreviewInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sPreviewInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sPreviewInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    return-object v0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    .line 56
    sput-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sPreviewInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    .line 57
    sput-object v0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->sHighresInstance:Lcom/zui/gallery/filtershow/filters/FiltersManager;

    return-void
.end method

.method public static setResources(Landroid/content/res/Resources;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->setFilterResources(Landroid/content/res/Resources;)V

    .line 62
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getPreviewManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->setFilterResources(Landroid/content/res/Resources;)V

    .line 63
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getHighresManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->setFilterResources(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public getCaptionRepresentations()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FiltersManager;->mRepresentationLookup:Ljava/util/HashMap;

    return-object v0
.end method
