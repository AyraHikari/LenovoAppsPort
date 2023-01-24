.class public Lcom/zui/gallery/cloud/CloudSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "CloudSettingFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;,
        Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/PreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;",
        ">;",
        "Landroid/preference/Preference$OnPreferenceChangeListener;",
        "Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;"
    }
.end annotation


# static fields
.field private static final FORCE_LOAD:I = 0x0

.field public static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "CloudSettingFragment"


# instance fields
.field allCloudAlbums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAlbumCategory:Lzui/preference/PreferenceCategory;

.field mAlbumNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAlbumsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplication:Lcom/zui/gallery/app/GalleryApp;

.field mAutoSyncSwitch:Lzui/preference/SwitchPreference;

.field mCategory:Lzui/preference/PreferenceCategory;

.field mContentObserver:Landroid/database/ContentObserver;

.field mHandler:Landroid/os/Handler;

.field mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field mWlanSwitch:Lzui/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/gallery/cloud/CloudSettingFragment;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumsCache:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumNameMap:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->allCloudAlbums:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/zui/gallery/cloud/CloudSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/cloud/CloudSettingFragment$1;-><init>(Lcom/zui/gallery/cloud/CloudSettingFragment;)V

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/zui/gallery/cloud/CloudSettingFragment$2;

    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/cloud/CloudSettingFragment$2;-><init>(Lcom/zui/gallery/cloud/CloudSettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/cloud/CloudSettingFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->setAutoSyncSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/cloud/CloudSettingFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->setupWlanSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/cloud/CloudSettingFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->startSyncTrash()V

    return-void
.end method

.method public static newInstance()Lcom/zui/gallery/cloud/CloudSettingFragment;
    .locals 2

    .line 95
    new-instance v0, Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-direct {v0}, Lcom/zui/gallery/cloud/CloudSettingFragment;-><init>()V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-virtual {v0, v1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setAutoSyncSwitch()V
    .locals 8

    .line 301
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoSyncSwitch autoSync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudSettingFragment"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAutoSyncSwitch:Lzui/preference/SwitchPreference;

    if-nez v1, :cond_0

    .line 305
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v1, 0x7f100074

    invoke-virtual {p0, v1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f100073

    invoke-virtual {p0, v1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-instance v7, Lcom/zui/gallery/cloud/CloudSettingFragment$4;

    invoke-direct {v7, p0}, Lcom/zui/gallery/cloud/CloudSettingFragment$4;-><init>(Lcom/zui/gallery/cloud/CloudSettingFragment;)V

    move-object v1, p0

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/cloud/CloudSettingFragment;->setupSwitch(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;ZZLandroid/preference/Preference$OnPreferenceChangeListener;)Lzui/preference/SwitchPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAutoSyncSwitch:Lzui/preference/SwitchPreference;

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v1, v0}, Lzui/preference/SwitchPreference;->setChecked(Z)V

    .line 364
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->setupWlanSwitch()V

    .line 366
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mCategory:Lzui/preference/PreferenceCategory;

    if-nez v1, :cond_2

    .line 367
    new-instance v1, Lzui/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lzui/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mCategory:Lzui/preference/PreferenceCategory;

    const/4 v2, 0x1

    .line 369
    invoke-virtual {v1, v2}, Lzui/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    .line 371
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mCategory:Lzui/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lzui/preference/PreferenceCategory;->setPreferencePadding(II)V

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mCategory:Lzui/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getAlbumCategory()V

    .line 380
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 381
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 382
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    goto :goto_1

    .line 384
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    .line 386
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->removeFirstKey(Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method private setupSwitch(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;ZZLandroid/preference/Preference$OnPreferenceChangeListener;)Lzui/preference/SwitchPreference;
    .locals 3

    .line 475
    new-instance v0, Lcom/zui/gallery/cloud/CloudSwitchPreference;

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/cloud/CloudSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 476
    invoke-virtual {v0, p2}, Lzui/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 477
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/16 v1, 0x34

    invoke-static {p2, v1}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lzui/preference/SwitchPreference;->setPreferencePadding(II)V

    .line 481
    :cond_0
    invoke-virtual {v0, p3}, Lzui/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lzui/preference/SwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 483
    invoke-virtual {v0, p5}, Lzui/preference/SwitchPreference;->setEnabled(Z)V

    .line 484
    invoke-virtual {v0, p6}, Lzui/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 485
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-object v0
.end method

.method private setupWlanSwitch()V
    .locals 8

    .line 429
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v6

    .line 430
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isWlanOnlyOn()Z

    move-result v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupWlanSwitch autoSync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wlanOnly:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudSettingFragment"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWifiDevicie()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mWlanSwitch:Lzui/preference/SwitchPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 439
    iget-object v3, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v1, 0x7f100091

    invoke-virtual {p0, v1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f100090

    invoke-virtual {p0, v1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    new-instance v7, Lcom/zui/gallery/cloud/CloudSettingFragment$5;

    invoke-direct {v7, p0}, Lcom/zui/gallery/cloud/CloudSettingFragment$5;-><init>(Lcom/zui/gallery/cloud/CloudSettingFragment;)V

    move-object v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/cloud/CloudSettingFragment;->setupSwitch(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;ZZLandroid/preference/Preference$OnPreferenceChangeListener;)Lzui/preference/SwitchPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mWlanSwitch:Lzui/preference/SwitchPreference;

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 469
    :goto_1
    invoke-virtual {v1, v0}, Lzui/preference/SwitchPreference;->setChecked(Z)V

    .line 470
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mWlanSwitch:Lzui/preference/SwitchPreference;

    invoke-virtual {v0, v6}, Lzui/preference/SwitchPreference;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method private startSyncTrash()V
    .locals 5

    .line 409
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 410
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/zui/gallery/jobscheduler/SyncTrashService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3e8

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/16 v2, 0x7530

    int-to-long v2, v2

    .line 411
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 412
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 413
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 416
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/zui/gallery/jobscheduler/SyncTrashService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 419
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public getAlbumCategory()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumCategory:Lzui/preference/PreferenceCategory;

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lzui/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumCategory:Lzui/preference/PreferenceCategory;

    const v1, 0x7f100086

    .line 395
    invoke-virtual {v0, v1}, Lzui/preference/PreferenceCategory;->setTitle(I)V

    .line 396
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumCategory:Lzui/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzui/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 397
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumCategory:Lzui/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v1, v2}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lzui/preference/PreferenceCategory;->setPreferencePadding(II)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumCategory:Lzui/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->setAutoSyncSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f10007c

    .line 106
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    const/high16 p1, 0x7f140000

    .line 108
    invoke-virtual {p0, p1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->addPreferencesFromResource(I)V

    .line 109
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 110
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance p1, Lcom/zui/gallery/cloud/CloudSettingLoader;

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p1, p2, v0}, Lcom/zui/gallery/cloud/CloudSettingLoader;-><init>(Landroid/content/Context;Lcom/zui/gallery/app/GalleryApp;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 275
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/cloud/CloudUtils;->ALBUM_AUTO_SYNC_CHANGED_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;)V
    .locals 11

    const-string p1, "CloudSettingFragment"

    const-string v0, "onLoadFinished "

    .line 140
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->allCloudAlbums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumNameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-nez p2, :cond_0

    .line 145
    monitor-exit p1

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->allCloudAlbums:Ljava/util/List;

    iget-object v1, p2, Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;->allCloudAlbums:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object v0, p2, Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;->syncOnAlbums:Ljava/util/List;

    .line 148
    iget-object p2, p2, Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;->syncOffAlbums:Ljava/util/List;

    .line 150
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getAlbumCategory()V

    .line 151
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumCategory:Lzui/preference/PreferenceCategory;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumCategory:Lzui/preference/PreferenceCategory;

    invoke-virtual {p2}, Lzui/preference/PreferenceCategory;->removeAll()V

    :cond_1
    const-string p2, "CloudSettingFragment"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished mAlbumNameMap.size() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumNameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    .line 158
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    iget-object v3, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zui/gallery/cloud/CloudManager;->isAlbumAutoSync(Ljava/lang/String;)Z

    move-result v8

    .line 159
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/zui/gallery/cloud/CloudUtils;->getLocalizedSystemAlbumName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    iget-object v5, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumCategory:Lzui/preference/PreferenceCategory;

    const-string v7, ""

    .line 162
    iget-object v3, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v9, v1

    move-object v4, p0

    move-object v6, v2

    move-object v10, p0

    .line 161
    invoke-direct/range {v4 .. v10}, Lcom/zui/gallery/cloud/CloudSettingFragment;->setupSwitch(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;ZZLandroid/preference/Preference$OnPreferenceChangeListener;)Lzui/preference/SwitchPreference;

    .line 163
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumsCache:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumNameMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CloudSettingFragment"

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localizedTitle ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_3
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAutoSyncSwitch:Lzui/preference/SwitchPreference;

    invoke-virtual {p2}, Lzui/preference/SwitchPreference;->isChecked()Z

    move-result p2

    if-nez p2, :cond_6

    .line 175
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "deleteFolderName"

    const-string v2, ""

    invoke-static {p2, v0, v2}, Lcom/zui/gallery/util/GalleryUtils;->getSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    monitor-exit p1

    return-void

    :cond_4
    const-string v0, "CloudSettingFragment"

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ============== !mAutoSyncSwitch.isChecked() == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ","

    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 182
    array-length v0, p2

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v2, p2, v1

    .line 183
    iget-object v3, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteSystemGroupTableContent(Landroid/content/ContentResolver;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "deleteFolderName"

    invoke-static {p2, v0}, Lcom/zui/gallery/util/GalleryUtils;->removeSpKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    :cond_6
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumCategory:Lzui/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAutoSyncSwitch:Lzui/preference/SwitchPreference;

    invoke-virtual {v0}, Lzui/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Lzui/preference/PreferenceCategory;->setEnabled(Z)V

    const-string p2, "CloudSettingFragment"

    const-string v0, "onLoadFinished End"

    .line 188
    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/cloud/CloudSettingFragment;->onLoadFinished(Landroid/content/Loader;Lcom/zui/gallery/cloud/CloudSettingFragment$LoadResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoaderReset loader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CloudSettingFragment"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 294
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 295
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/cloud/CloudManager;->unregisterSyncListener(Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;)V

    .line 296
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumNameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAlbumsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 206
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange  name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " entry.isLocalOrCloud: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->isLocalOrCloud:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CloudSettingFragment"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v2, ","

    const-string v4, ""

    const-string v5, "deleteFolderName"

    const/4 v6, 0x1

    if-eqz p2, :cond_4

    .line 209
    iget p2, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->isLocalOrCloud:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 210
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->allCloudAlbums:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "onPreferenceChange cloud album already exist, just set"

    .line 212
    invoke-static {v3, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p2

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->localPath:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v6}, Lcom/zui/gallery/cloud/CloudManager;->setAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 215
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p2

    new-instance v1, Lcom/zui/gallery/cloud/CloudSettingFragment$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/zui/gallery/cloud/CloudSettingFragment$3;-><init>(Lcom/zui/gallery/cloud/CloudSettingFragment;Ljava/lang/String;Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;)V

    invoke-virtual {p2, p1, v1}, Lcom/zui/gallery/cloud/CloudManager;->createCloudAlbum(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 225
    :cond_2
    iget p2, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->isLocalOrCloud:I

    if-ne p2, v6, :cond_3

    .line 227
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/zui/gallery/data/GroupBucketHelper;->insertGroupBucketToGroupTableCloud(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 229
    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->makeGroupDir(Ljava/lang/String;)Z

    .line 230
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p2

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->localPath:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v6}, Lcom/zui/gallery/cloud/CloudManager;->setAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v5, v4}, Lcom/zui/gallery/util/GalleryUtils;->getSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 234
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/zui/gallery/util/GalleryUtils;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange, create and setup local custom album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "============== , \u62c9\u53d6\u4e91\u7aef\u6587\u4ef6\u5939\u96c6\u5408 :  deleteFolderName == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u5355\u4e2a\u6587\u4ef6\u5939\u540d\u79f0 : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 240
    :cond_3
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p2

    iget-object v1, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->localPath:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v6}, Lcom/zui/gallery/cloud/CloudManager;->setAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "============== , \u65e2\u4e0d\u662f\u4e91\u7aef\u4e5f\u4e0d\u662f\u672c\u5730\u6587\u4ef6\u5939 : entry.isLocalOrCloud "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->isLocalOrCloud:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  \u540d\u79f0 : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 246
    :cond_4
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v5, v4}, Lcom/zui/gallery/util/GalleryUtils;->getSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 247
    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderDirectory(Ljava/lang/String;)Z

    move-result v7

    .line 248
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "============== , \u5173\u95ed\u5355\u4e2a\u4e91\u6587\u4ef6\u5939  \u540d\u79f0 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  \u6240\u6709\u5f85\u5173\u95ed\u7684\u4e91\u6587\u4ef6\u5939\u540d\u79f0  deleteFolderName == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 252
    array-length v3, p2

    move v7, v1

    :goto_0
    if-ge v7, v3, :cond_6

    aget-object v8, p2, v7

    .line 253
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 257
    :cond_6
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v5, v4}, Lcom/zui/gallery/util/GalleryUtils;->putSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 259
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v5}, Lcom/zui/gallery/util/GalleryUtils;->removeSpKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    :cond_7
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteSystemGroupTableContent(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 266
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p2

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->localPath:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Lcom/zui/gallery/cloud/CloudManager;->setAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    :goto_1
    return v6
.end method

.method public onResume()V
    .locals 4

    .line 281
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 282
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/cloud/CloudManager;->registerSyncListener(Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_ALBUM_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSyncStatChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
