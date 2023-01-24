.class public Lcom/zui/gallery/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumLabelLoader;,
        Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;,
        Lcom/zui/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;,
        Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;,
        Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ALBUM_ENTRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetSlidingWindow"


# instance fields
.field albumCountTextOffsetY:I

.field albumCountTextSize:I

.field albumNameTextOffsetY:I

.field albumNameTextSize:I

.field bottom_left_for_title_height:I

.field private cloudSyncCoverFilepathArray:[Ljava/lang/String;

.field private cloudSynccount:Ljava/lang/String;

.field cover_bg_color:I

.field empty_bg_color:I

.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mAlbumCountPaint:Landroid/text/TextPaint;

.field private mAlbumNamePaint:Landroid/text/TextPaint;

.field private mAlbumSetCategoryEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mApp:Lcom/zui/gallery/app/GalleryApp;

.field private mContentEnd:I

.field private mContentStart:I

.field private final mContentUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

.field private mCoverPaint:Landroid/graphics/Paint;

.field private final mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

.field private mDataMoreAlbum:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

.field private mEnd:I

.field private final mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcom/zui/gallery/ui/AlbumLabelMaker;

.field private final mLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

.field private mListener:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field private final mLoadingText:Ljava/lang/String;

.field private final mNameMargin:I

.field private mRecentlyDeletedPaint:Landroid/text/TextPaint;

.field private mSize:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private final mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

.field private final mThreadPool:Lcom/zui/gallery/util/ThreadPool;

.field private mTrashAlbumCountPaint:Landroid/text/TextPaint;

.field recentlyDeletedTextSize:I

.field trashAlbumCountTextSize:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 108
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 110
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 111
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    const/16 v1, 0x78

    .line 120
    iput v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mNameMargin:I

    .line 124
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 125
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 133
    new-instance v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    invoke-direct {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mDataMoreAlbum:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 136
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cover_bg_color:I

    .line 137
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->empty_bg_color:I

    .line 147
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->bottom_left_for_title_height:I

    .line 148
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumNameTextSize:I

    .line 149
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->recentlyDeletedTextSize:I

    .line 150
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumCountTextSize:I

    .line 151
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumNameTextOffsetY:I

    .line 152
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumCountTextOffsetY:I

    .line 153
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->trashAlbumCountTextSize:I

    .line 363
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mEnd:I

    const-string v0, "-1"

    .line 856
    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cloudSynccount:Ljava/lang/String;

    const/4 v0, 0x0

    .line 857
    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cloudSyncCoverFilepathArray:[Ljava/lang/String;

    .line 194
    invoke-virtual {p2, p0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setModelListener(Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;)V

    .line 195
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    .line 196
    new-array p4, p4, [Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iput-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 197
    invoke-virtual {p2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->size()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    .line 198
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/app/GalleryApp;

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mApp:Lcom/zui/gallery/app/GalleryApp;

    .line 199
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 200
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    .line 202
    new-instance p2, Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4, p3}, Lcom/zui/gallery/ui/AlbumLabelMaker;-><init>(Landroid/content/Context;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/AlbumLabelMaker;

    .line 203
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f100198

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    .line 204
    new-instance p2, Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/zui/gallery/glrenderer/TextureUploader;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    .line 205
    new-instance p2, Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/zui/gallery/glrenderer/TextureUploader;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    .line 207
    new-instance p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$1;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$1;-><init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    .line 214
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600c1

    .line 232
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->bottom_left_for_title_height:I

    const p2, 0x7f050039

    .line 233
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    iput p4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cover_bg_color:I

    .line 234
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->empty_bg_color:I

    const p2, 0x7f0600d9

    .line 235
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumNameTextOffsetY:I

    const p2, 0x7f0600a0

    .line 236
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumCountTextOffsetY:I

    const p2, 0x7f0600d8

    .line 237
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumNameTextSize:I

    const p2, 0x7f0602d2

    .line 238
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->recentlyDeletedTextSize:I

    const p2, 0x7f06009f

    .line 239
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumCountTextSize:I

    const p2, 0x7f06035b

    .line 240
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->trashAlbumCountTextSize:I

    .line 242
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mCoverPaint:Landroid/graphics/Paint;

    .line 243
    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->empty_bg_color:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mCoverPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 245
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mCoverPaint:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumNamePaint:Landroid/text/TextPaint;

    .line 248
    iget p4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumNameTextSize:I

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 249
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumNamePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 251
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumNamePaint:Landroid/text/TextPaint;

    iget p4, p3, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setColor(I)V

    .line 253
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumCountPaint:Landroid/text/TextPaint;

    .line 254
    iget p4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumCountTextSize:I

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 255
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 257
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumCountPaint:Landroid/text/TextPaint;

    iget p4, p3, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countColor:I

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setColor(I)V

    .line 260
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mRecentlyDeletedPaint:Landroid/text/TextPaint;

    .line 261
    iget p4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->recentlyDeletedTextSize:I

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 262
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mRecentlyDeletedPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 263
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mRecentlyDeletedPaint:Landroid/text/TextPaint;

    iget p4, p3, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->recentlyDeletedColor:I

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setColor(I)V

    .line 266
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mTrashAlbumCountPaint:Landroid/text/TextPaint;

    .line 267
    iget p4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->trashAlbumCountTextSize:I

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 268
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mTrashAlbumCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 269
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mTrashAlbumCountPaint:Landroid/text/TextPaint;

    iget p2, p3, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countColor:I

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/graphics/Paint;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mCoverPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mApp:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mRecentlyDeletedPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mTrashAlbumCountPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;I)I
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->calculateX(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumNamePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumCountPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/util/ThreadPool;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return p0
.end method

.method static synthetic access$2506(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I
    .locals 1

    .line 94
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$2600(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$2700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/AlbumLabelMaker;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/AlbumLabelMaker;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSlotHeight:I

    return p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cloudSyncCoverFilepathArray:[Ljava/lang/String;

    return-object p0
.end method

.method private calculateX(I)I
    .locals 6

    .line 1534
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1535
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7f0600cf

    .line 1536
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0600d4

    .line 1537
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v5, 0x7f0600d5

    .line 1538
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    if-eqz v1, :cond_1

    const v1, 0x7f0600d0

    .line 1541
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v1, 0x7f0600d7

    .line 1543
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v1, 0x7f0600d6

    .line 1544
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    :cond_1
    mul-int/2addr v3, v2

    sub-int/2addr p1, v3

    add-int/2addr p1, v5

    add-int v0, v4, v5

    .line 1552
    div-int/2addr p1, v0

    mul-int/2addr v4, p1

    mul-int/2addr p1, v5

    sub-int/2addr p1, v5

    add-int/2addr v4, p1

    return v4
.end method

.method private cancelImagesInSlot(I)V
    .locals 2

    .line 489
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    .line 492
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/BitmapLoader;->cancelLoad()V

    .line 494
    :cond_1
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 495
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/BitmapLoader;->cancelLoad()V

    :cond_2
    :goto_0
    return-void
.end method

.method private cancelNonactiveImages()V
    .locals 3

    .line 470
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 473
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 474
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 1

    const/4 v0, 0x1

    .line 505
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(IZ)V

    return-void
.end method

.method private freeSlotContent(IZ)V
    .locals 9

    .line 509
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object p2

    .line 510
    invoke-virtual {p2}, Lcom/zui/gallery/app/OptimizationAlbum;->getLongItemIndex()I

    move-result v0

    .line 512
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget v1, v1, Lcom/zui/gallery/app/AbstractGalleryActivity;->INIT:I

    const/4 v2, 0x0

    const-string v3, "111111"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget p1, p1, Lcom/zui/gallery/app/AbstractGalleryActivity;->INIT:I

    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/OptimizationAlbum;->setLongItemIndex(I)V

    .line 515
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/OptimizationAlbum;->setDeleteAlbum(I)V

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "freeSlotContent  index="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v2

    .line 519
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 523
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 524
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 525
    :cond_1
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 526
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 527
    :cond_2
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_3

    .line 528
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 529
    :cond_3
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_4

    .line 530
    iget-object v0, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    const/4 v5, 0x0

    aput-object v5, v0, v1

    if-eqz p2, :cond_8

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 535
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "freeSlotContent currentTime1 ="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_1
    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mEnd:I

    if-ge p1, p2, :cond_6

    add-int/lit8 p2, p1, 0x1

    .line 537
    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v7, v6

    if-lt p2, v7, :cond_5

    return-void

    .line 540
    :cond_5
    array-length v7, v6

    rem-int v7, p1, v7

    array-length v8, v6

    rem-int v8, v4, v8

    add-int/2addr p1, v8

    aget-object p1, v6, p1

    aput-object p1, v6, v7

    move p1, p2

    goto :goto_1

    .line 542
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, p1

    if-ge p2, v4, :cond_7

    .line 543
    array-length v4, p1

    rem-int v4, p2, v4

    aput-object v5, p1, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 546
    :cond_7
    iput v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mEnd:I

    .line 547
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "freeSlotContent currentTime2 ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method private static getDataVersion(Lcom/zui/gallery/data/MediaObject;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaObject;->getDataVersion()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private isLabelChanged(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 0

    .line 553
    invoke-static {p1, p3}, Lcom/zui/gallery/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private prepareSlotContent(IZ)V
    .locals 5

    .line 662
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    .line 663
    aget-object v0, v0, v1

    const-string v2, "index is "

    const-string/jumbo v3, "wangcanaaa"

    if-eqz v0, :cond_0

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " entry != null"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :cond_0
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    invoke-direct {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    .line 668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new entry"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;IZ)V

    .line 671
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    aput-object v0, p1, v1

    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 2

    .line 479
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    .line 482
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 483
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/BitmapLoader;->startLoad()V

    .line 484
    :cond_1
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 485
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/BitmapLoader;->startLoad()V

    :cond_2
    :goto_0
    return-void
.end method

.method private requestNonactiveImages()V
    .locals 3

    .line 461
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 465
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setContentIndex(II)V
    .locals 3

    .line 398
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mEnd:I

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetSlidingWindow"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_4

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v0, p2, :cond_0

    goto :goto_4

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    .line 410
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    move v2, p2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 413
    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 416
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    move v2, p1

    :goto_2
    if-ge v2, v0, :cond_3

    .line 417
    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 419
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_3
    if-ge v0, p2, :cond_6

    .line 420
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 401
    :cond_4
    :goto_4
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_5
    if-ge v0, v2, :cond_5

    .line 402
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 404
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setActiveWindow(II)V

    move v0, p1

    :goto_6
    if-ge v0, p2, :cond_6

    .line 406
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 423
    :cond_6
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 424
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    return-void
.end method

.method private setContentWindow(II)V
    .locals 3

    .line 365
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 367
    :cond_0
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mEnd:I

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetSlidingWindow"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_5

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v0, p2, :cond_1

    goto :goto_4

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    .line 379
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_2
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    move v2, p2

    :goto_1
    if-ge v2, v0, :cond_3

    .line 382
    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 385
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    move v2, p1

    :goto_2
    if-ge v2, v0, :cond_4

    .line 386
    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 388
    :cond_4
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_3
    if-ge v0, p2, :cond_7

    .line 389
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 370
    :cond_5
    :goto_4
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_5
    if-ge v0, v2, :cond_6

    .line 371
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 373
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setActiveWindow(II)V

    move v0, p1

    :goto_6
    if-ge v0, p2, :cond_7

    .line 375
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 393
    :cond_7
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 394
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    return-void
.end method

.method private static startLoadBitmap(Lcom/zui/gallery/ui/BitmapLoader;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/BitmapLoader;->startLoad()V

    .line 678
    invoke-virtual {p0}, Lcom/zui/gallery/ui/BitmapLoader;->isRequestInProgress()Z

    move-result p0

    return p0
.end method

.method private updateAlbumSetEntry(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;IZ)V
    .locals 14

    move-object v7, p0

    move-object v8, p1

    move/from16 v2, p2

    .line 564
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    .line 565
    iget-object v1, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getCoverItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    .line 566
    iget-object v3, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getCoverItem2(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v3

    .line 567
    iget-object v4, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v4, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getCoverItem3(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v4

    .line 568
    iget-object v5, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-virtual {v5, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->getTotalCount(I)I

    move-result v5

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v6

    const/4 v9, 0x6

    if-ne v6, v9, :cond_0

    .line 575
    sget v5, Lcom/zui/gallery/data/LocalAlbumSetMore;->maxOtherAlbumCount:I

    .line 578
    :cond_0
    iget-object v6, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 579
    iget v9, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 581
    iput-object v0, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    .line 582
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/zui/gallery/data/MediaObject;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setDataVersion:J

    const/4 v10, 0x0

    if-nez v0, :cond_1

    move-object v11, v10

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v11

    :goto_0
    iput-object v11, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/zui/gallery/data/Path;

    if-nez v0, :cond_2

    const-string v11, ""

    goto :goto_1

    .line 585
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/zui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 586
    :goto_1
    invoke-static {v0}, Lcom/zui/gallery/data/DataSourceType;->identifySourceType(Lcom/zui/gallery/data/MediaSet;)I

    move-result v0

    .line 588
    invoke-direct {p0, v6, v9, v11, v5}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->isLabelChanged(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v6

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    .line 589
    iput-object v11, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 590
    iput v5, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 591
    iput v0, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    .line 592
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 593
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 594
    invoke-static {p1, v10}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 595
    iput-object v10, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    :cond_3
    move v0, v9

    goto :goto_2

    :cond_4
    move/from16 v0, p3

    .line 603
    :goto_2
    iput-object v1, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcom/zui/gallery/data/MediaItem;

    .line 604
    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/zui/gallery/data/MediaObject;)J

    move-result-wide v5

    iget-wide v11, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    cmp-long v5, v5, v11

    const/4 v11, 0x0

    if-eqz v5, :cond_6

    .line 605
    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/zui/gallery/data/MediaObject;)J

    move-result-wide v5

    iput-wide v5, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    .line 608
    iput v11, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    .line 610
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 611
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 612
    invoke-static {p1, v10}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 613
    iput-object v10, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 614
    iput-object v10, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    :cond_5
    move v0, v9

    .line 617
    :cond_6
    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/zui/gallery/data/MediaObject;)J

    move-result-wide v5

    iget-wide v12, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion2:J

    cmp-long v5, v5, v12

    if-eqz v5, :cond_7

    .line 618
    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/zui/gallery/data/MediaObject;)J

    move-result-wide v5

    iput-wide v5, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion2:J

    move v0, v9

    .line 621
    :cond_7
    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/zui/gallery/data/MediaObject;)J

    move-result-wide v5

    iget-wide v12, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion3:J

    cmp-long v5, v5, v12

    if-eqz v5, :cond_8

    .line 622
    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/zui/gallery/data/MediaObject;)J

    move-result-wide v5

    iput-wide v5, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion3:J

    move v0, v9

    :cond_8
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    new-array v5, v5, [Lcom/zui/gallery/data/MediaItem;

    aput-object v1, v5, v11

    aput-object v3, v5, v9

    aput-object v4, v5, v6

    .line 633
    new-instance v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v0, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v10

    move-object v0, v9

    move-object v1, p0

    move/from16 v2, p2

    move-object v3, v5

    move-object v5, v6

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;I[Lcom/zui/gallery/data/MediaItem;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, v9}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 634
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/zui/gallery/ui/BitmapLoader;)Z

    goto :goto_3

    .line 639
    :cond_9
    iget v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lez v0, :cond_a

    sub-int/2addr v0, v6

    if-lt v2, v0, :cond_a

    .line 641
    iget-object v0, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_a

    new-array v5, v5, [Lcom/zui/gallery/data/MediaItem;

    aput-object v1, v5, v11

    aput-object v3, v5, v9

    aput-object v4, v5, v6

    .line 646
    new-instance v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    iget-object v4, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v0, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v10

    move-object v0, v9

    move-object v1, p0

    move/from16 v2, p2

    move-object v3, v5

    move-object v5, v6

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;I[Lcom/zui/gallery/data/MediaItem;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, v9}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 647
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/zui/gallery/ui/BitmapLoader;)Z

    :cond_a
    :goto_3
    const/4 v0, -0x1

    .line 651
    iput v0, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    .line 652
    iput v0, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->desIndex:I

    .line 653
    iput-boolean v11, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isSelected:Z

    .line 654
    iput-boolean v11, v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isMoved:Z

    return-void
.end method

.method private updateAllImageRequests()V
    .locals 4

    const/4 v0, 0x0

    .line 727
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 728
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 729
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v3, v2

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 730
    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/zui/gallery/ui/BitmapLoader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v0, :cond_2

    .line 736
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    goto :goto_1

    .line 738
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    :goto_1
    return-void
.end method

.method private updateTextureUploadQueue()V
    .locals 6

    .line 696
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+, mActiveStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mActiveEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetSlidingWindow"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 702
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 705
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v2, :cond_2

    .line 706
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v3

    rem-int v4, v0, v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    .line 707
    iget-object v4, v3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v4, :cond_1

    .line 708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object v3, v3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_2
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 721
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 722
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private uploadBackgroundTextureInSlot(I)V
    .locals 2

    .line 682
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    .line 686
    iget-object v0, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object p1, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 3

    const/4 v0, 0x0

    .line 825
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 826
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v1, v2, :cond_0

    .line 827
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->freeSlotContent(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 2

    .line 277
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " outsides ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumSetSlidingWindow"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAlbumSetCategoryEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumSetCategoryEntryList:Ljava/util/List;

    return-object v0
.end method

.method public getCloudSyncSlotId()I
    .locals 4

    .line 865
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 866
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v3, v2

    rem-int v3, v0, v3

    .line 867
    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 869
    iget-object v2, v2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    const-string/jumbo v3, "\u4e91\u76f8\u518c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getLoadingTexture()Lcom/zui/gallery/glrenderer/BitmapTexture;
    .locals 4

    .line 804
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/AlbumLabelMaker;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/zui/gallery/util/ThreadPool$JobContext;

    .line 807
    invoke-interface {v0, v1}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 808
    new-instance v1, Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v1, v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 809
    invoke-virtual {v1, v3}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/zui/gallery/glrenderer/BitmapTexture;

    return-object v0
.end method

.method public getMoreAlbumData()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mDataMoreAlbum:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    return-object v0
.end method

.method public getTrashCanIndex()I
    .locals 5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTrashCanIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mActiveStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mActiveEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tiantiannianzheni"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    :goto_0
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge v0, v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v3, v2

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 292
    iget-object v3, v2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    if-eqz v3, :cond_1

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTrashCanIndex 0.1 i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, v2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrashCanIndex 1 i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrashCanIndex 2 i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public initMoveToOtherFolderData(Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/SelectionManager;)V
    .locals 5

    const/4 p1, 0x1

    move v0, p1

    move v1, v0

    move v2, v1

    .line 334
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 335
    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 337
    iget-object v4, v3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/zui/gallery/data/Path;

    .line 338
    invoke-virtual {p2, v4}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 339
    iput v1, v3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    .line 340
    iput-boolean p1, v3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isSelected:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 342
    iput v1, v3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    add-int/lit8 v1, v2, 0x1

    .line 343
    iput v2, v3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->desIndex:I

    move v2, v1

    :goto_1
    move v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getMoreAlbumData()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object p1

    iput v1, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    .line 348
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getMoreAlbumData()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object p1

    iput v2, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->desIndex:I

    return-void
.end method

.method public isActiveSlot(I)Z
    .locals 1

    .line 360
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPlayMoveAndReorderAnimation(Lcom/zui/gallery/ui/AlbumSetSlotView;)Z
    .locals 2

    .line 325
    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getVisibleEnd()I

    move-result v0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getMoreItemIndex(Z)I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onConfigChanged()V
    .locals 3

    const/4 v0, 0x1

    .line 840
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 841
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->prepareResources()V

    .line 842
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v1, v2, :cond_0

    .line 843
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContentChanged(I)V
    .locals 3

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContentChanged 1 == index == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mIsActive == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanaaa"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 766
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v0

    rem-int v2, p1, v2

    aget-object v0, v0, v2

    .line 774
    invoke-direct {p0, v0, p1, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;IZ)V

    .line 777
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 778
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 769
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "invalid update: %s is outside (%s, %s)"

    .line 767
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumSetSlidingWindow"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMoreCoverChange()V
    .locals 0

    return-void
.end method

.method public onSizeChanged(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;)V"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/OptimizationAlbum;->isDeleteAlbum()Z

    move-result v0

    .line 745
    iget-boolean v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumSetCategoryEntryList:Ljava/util/List;

    if-ne v1, p2, :cond_1

    :cond_0
    if-eqz v0, :cond_4

    .line 746
    :cond_1
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    .line 747
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mAlbumSetCategoryEntryList:Ljava/util/List;

    .line 748
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_2

    .line 749
    invoke-interface {v0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(ILjava/util/List;)V

    .line 750
    :cond_2
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p1, p2, :cond_3

    .line 751
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 752
    :cond_3
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p1, p2, :cond_4

    .line 753
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    :cond_4
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 3

    .line 1610
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSlotHeight:I

    if-ne v0, p2, :cond_0

    return-void

    .line 1613
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    .line 1614
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSlotHeight:I

    const/4 p2, 0x0

    .line 1615
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1616
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/AlbumLabelMaker;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumLabelMaker;->setLabelWidth(I)V

    .line 1624
    iget-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez p1, :cond_1

    return-void

    .line 1627
    :cond_1
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge p1, v0, :cond_3

    .line 1628
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v1

    rem-int v2, p1, v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 1629
    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1630
    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 1631
    invoke-static {v1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 1632
    iput-object p2, v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 816
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 817
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 818
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->freeResources()V

    return-void
.end method

.method public refresh(I)V
    .locals 9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 786
    new-instance v8, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cloudSynccount:Ljava/lang/String;

    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v7

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;I[Lcom/zui/gallery/data/MediaItem;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, v8}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 787
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/zui/gallery/ui/BitmapLoader;)Z

    :cond_0
    return-void
.end method

.method public resetAlbumSetEntryMoveIndex()V
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    .line 311
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 313
    iput v3, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->desIndex:I

    .line 314
    iput v3, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    .line 315
    iput-boolean v1, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isMoved:Z

    .line 316
    iput-boolean v1, v4, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isSelected:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getMoreAlbumData()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    iput v3, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    .line 321
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getMoreAlbumData()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    iput v3, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->desIndex:I

    return-void
.end method

.method public resume()V
    .locals 3

    const/4 v0, 0x1

    .line 832
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 833
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->prepareResources()V

    .line 834
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    .line 835
    invoke-direct {p0, v0, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->prepareSlotContent(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 5

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mData.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tiaoshiyinanzazheng"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    sub-int v2, p2, p1

    .line 431
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v3, v3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p2, v2, :cond_1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "start = %s, end = %s, length = %s, size = %s"

    .line 432
    invoke-static {v3, v2}, Lcom/zui/gallery/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 437
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 438
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr p1, p2

    .line 439
    div-int/2addr p1, v0

    array-length p2, v2

    div-int/2addr p2, v0

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v0, v2

    sub-int/2addr p2, v0

    .line 440
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 439
    invoke-static {p1, v1, p2}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 441
    array-length p2, v2

    add-int/2addr p2, p1

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 442
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/OptimizationAlbum;->isDeleteAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->setContentIndex(II)V

    return-void

    .line 447
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    return-void
.end method

.method public setCloucSyncCount(Ljava/lang/String;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cloudSynccount:Ljava/lang/String;

    return-void
.end method

.method public setCloucSyncMediaItems([Ljava/lang/String;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->cloudSyncCoverFilepathArray:[Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

    return-void
.end method

.method public size()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method
