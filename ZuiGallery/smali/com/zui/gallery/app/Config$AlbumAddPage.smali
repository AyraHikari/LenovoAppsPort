.class public Lcom/zui/gallery/app/Config$AlbumAddPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumAddPage"
.end annotation


# static fields
.field private static sInstance:Lcom/zui/gallery/app/Config$AlbumAddPage;


# instance fields
.field public labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

.field public paddingBottom:I

.field public paddingTop:I

.field public placeholderColor:I

.field public slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

.field private themes:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050039

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->placeholderColor:I

    .line 186
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const v1, 0x7f0600cc

    .line 187
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->heightSlotGap:I

    .line 188
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const v1, 0x7f0600cb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->slotHeight:I

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->slotViewSpec:Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;

    const v1, 0x7f06009c

    .line 190
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotView$Spec;->categoryLabelHeight:I

    const v0, 0x7f0600bc

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->paddingTop:I

    const v0, 0x7f0600bb

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->paddingBottom:I

    .line 194
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0600aa

    .line 195
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 197
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0600d9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0600a0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0600d8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    .line 203
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f06009f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    .line 205
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0600ae

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 207
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0600da

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleRightMargin:I

    .line 209
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f0600a3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->iconSize:I

    .line 211
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f050032

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->backgroundColor:I

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f050035

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countColor:I

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const v1, 0x7f050030

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->dividerLineColor:I

    .line 217
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const/4 v0, 0x2

    iput v0, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->dividerLineHeight:I

    .line 218
    iget-object p1, p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->labelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v0, 0x438

    iput v0, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->dividerLineWidth:I

    return-void
.end method

.method public static declared-synchronized get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$AlbumAddPage;
    .locals 5

    const-class v0, Lcom/zui/gallery/app/Config$AlbumAddPage;

    monitor-enter v0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCurrentTheme()Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    move-result-object v1

    .line 169
    sget-object v2, Lcom/zui/gallery/app/Config$AlbumAddPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumAddPage;

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Lcom/zui/gallery/app/Config$AlbumAddPage;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/Config$AlbumAddPage;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/zui/gallery/app/Config$AlbumAddPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumAddPage;

    .line 171
    iput-object v1, v2, Lcom/zui/gallery/app/Config$AlbumAddPage;->themes:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    goto :goto_0

    .line 173
    :cond_0
    sget-object v2, Lcom/zui/gallery/app/Config$AlbumAddPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumAddPage;

    iget-object v2, v2, Lcom/zui/gallery/app/Config$AlbumAddPage;->themes:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    if-eq v1, v2, :cond_1

    const-string v2, "Config"

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old theme is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zui/gallery/app/Config$AlbumAddPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumAddPage;

    iget-object v4, v4, Lcom/zui/gallery/app/Config$AlbumAddPage;->themes:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " current theme is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v2, Lcom/zui/gallery/app/Config$AlbumAddPage;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/Config$AlbumAddPage;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/zui/gallery/app/Config$AlbumAddPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumAddPage;

    .line 177
    iput-object v1, v2, Lcom/zui/gallery/app/Config$AlbumAddPage;->themes:Lcom/zui/gallery/app/AbstractGalleryActivity$Themes;

    .line 180
    :cond_1
    :goto_0
    sget-object p0, Lcom/zui/gallery/app/Config$AlbumAddPage;->sInstance:Lcom/zui/gallery/app/Config$AlbumAddPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
