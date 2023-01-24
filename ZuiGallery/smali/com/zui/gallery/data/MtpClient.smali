.class public Lcom/zui/gallery/data/MtpClient;
.super Ljava/lang/Object;
.source "MtpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/MtpClient$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "android.mtp.MtpClient.action.USB_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "MtpClient"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mIgnoredDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MtpClient$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionIntent:Landroid/app/PendingIntent;

.field private final mRequestPermissionDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/zui/gallery/data/MtpClient$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/MtpClient$1;-><init>(Lcom/zui/gallery/data/MtpClient;)V

    iput-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    iput-object p1, p0, Lcom/zui/gallery/data/MtpClient;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "usb"

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 171
    iget-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/data/MtpClient;)Ljava/util/HashMap;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/MtpClient;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static isCamera(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    .line 151
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 155
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 156
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    if-ne v3, v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .locals 4

    .line 187
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p1}, Lcom/zui/gallery/data/MtpClient;->isCamera(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/zui/gallery/data/MtpClient;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 195
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient;->mRequestPermissionDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 199
    new-instance v2, Landroid/mtp/MtpDevice;

    invoke-direct {v2, p1}, Landroid/mtp/MtpDevice;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 200
    invoke-virtual {v2, v1}, Landroid/mtp/MtpDevice;->open(Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return-object v2

    .line 206
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 207
    invoke-virtual {v2}, Landroid/mtp/MtpDevice;->close()V

    .line 208
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient;->mIgnoredDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addListener(Lcom/zui/gallery/data/MtpClient$Listener;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public deleteObject(Ljava/lang/String;I)Z
    .locals 0

    .line 351
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 355
    :cond_0
    invoke-virtual {p1, p2}, Landroid/mtp/MtpDevice;->deleteObject(I)Z

    move-result p1

    return p1
.end method

.method public getDevice(I)Landroid/mtp/MtpDevice;
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/mtp/MtpDevice;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/mtp/MtpDevice;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 287
    iget-object v3, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 288
    invoke-direct {p0, v2}, Lcom/zui/gallery/data/MtpClient;->openDeviceLocked(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    goto :goto_0

    .line 292
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObject(Ljava/lang/String;II)[B
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 412
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/mtp/MtpDevice;->getObject(II)[B

    move-result-object p1

    return-object p1
.end method

.method public getObjectInfo(Ljava/lang/String;I)Landroid/mtp/MtpObjectInfo;
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 340
    :cond_0
    invoke-virtual {p1, p2}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object p1

    return-object p1
.end method

.method public getObjectList(Ljava/lang/String;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    const/4 p3, -0x1

    :cond_1
    const/4 v1, 0x0

    .line 380
    invoke-virtual {p1, p2, v1, p3}, Landroid/mtp/MtpDevice;->getObjectHandles(III)[I

    move-result-object p2

    if-nez p2, :cond_2

    return-object v0

    .line 385
    :cond_2
    array-length p3, p2

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, p3, :cond_4

    .line 388
    aget v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "MtpClient"

    const-string v3, "getObjectInfo failed"

    .line 390
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 392
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getStorageList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/mtp/MtpStorageInfo;",
            ">;"
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 308
    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpDevice;->getStorageIds()[I

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 313
    :cond_1
    array-length v0, v1

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 316
    aget v4, v1, v3

    invoke-virtual {p1, v4}, Landroid/mtp/MtpDevice;->getStorageInfo(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "MtpClient"

    const-string v5, "getStorageInfo failed"

    .line 318
    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public getThumbnail(Ljava/lang/String;I)[B
    .locals 0

    .line 423
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 427
    :cond_0
    invoke-virtual {p1, p2}, Landroid/mtp/MtpDevice;->getThumbnail(I)[B

    move-result-object p1

    return-object p1
.end method

.method public importFile(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 441
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 445
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/mtp/MtpDevice;->importFile(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeListener(Lcom/zui/gallery/data/MtpClient$Listener;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/data/MtpClient;->mDevices:Ljava/util/HashMap;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 248
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
