.class public Lcom/android/systemui/usb/UsbPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPermissionGranted:Z

.field private mUid:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 177
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private canBeDefault(Landroid/hardware/usb/UsbAccessory;Landroid/content/pm/PackageInfo;)Z
    .locals 10
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 197
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 198
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 199
    array-length v2, v0

    .line 200
    .local v2, "numActivities":I
    move v3, v1

    .line 200
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 201
    aget-object v4, v0, v3

    .line 203
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 203
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v6, 0x0

    .line 205
    if-nez v5, :cond_0

    .line 220
    if-eqz v5, :cond_6

    invoke-static {v6, v5}, Lcom/android/systemui/usb/UsbPermissionActivity;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 209
    :cond_0
    :try_start_1
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 210
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 211
    const-string/jumbo v7, "usb-accessory"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 212
    invoke-static {v5}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v7

    .line 213
    .local v7, "filter":Landroid/hardware/usb/AccessoryFilter;
    invoke-virtual {v7, p1}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    .line 214
    nop

    .line 220
    if-eqz v5, :cond_1

    :try_start_2
    invoke-static {v6, v5}, Lcom/android/systemui/usb/UsbPermissionActivity;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    :cond_1
    return v8

    .line 218
    .end local v7    # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_2
    :try_start_3
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 220
    :cond_3
    if-eqz v5, :cond_4

    :try_start_4
    invoke-static {v6, v5}, Lcom/android/systemui/usb/UsbPermissionActivity;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 222
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4
    goto :goto_3

    .line 220
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 203
    :catch_0
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    :goto_2
    if-eqz v5, :cond_5

    :try_start_6
    invoke-static {v6, v5}, Lcom/android/systemui/usb/UsbPermissionActivity;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 220
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v5

    .line 221
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "UsbPermissionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "numActivities":I
    .end local v3    # "i":I
    :cond_7
    return v1
.end method

.method private canBeDefault(Landroid/hardware/usb/UsbDevice;Landroid/content/pm/PackageInfo;)Z
    .locals 10
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 154
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 155
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 156
    array-length v2, v0

    .line 157
    .local v2, "numActivities":I
    move v3, v1

    .line 157
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 158
    aget-object v4, v0, v3

    .line 160
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 160
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v6, 0x0

    .line 162
    if-nez v5, :cond_0

    .line 177
    if-eqz v5, :cond_6

    invoke-static {v6, v5}, Lcom/android/systemui/usb/UsbPermissionActivity;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 166
    :cond_0
    :try_start_1
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 167
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 168
    const-string/jumbo v7, "usb-device"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 169
    invoke-static {v5}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v7

    .line 170
    .local v7, "filter":Landroid/hardware/usb/DeviceFilter;
    invoke-virtual {v7, p1}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    .line 171
    nop

    .line 177
    if-eqz v5, :cond_1

    :try_start_2
    invoke-static {v6, v5}, Lcom/android/systemui/usb/UsbPermissionActivity;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    :cond_1
    return v8

    .line 175
    .end local v7    # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_2
    :try_start_3
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 177
    :cond_3
    if-eqz v5, :cond_4

    :try_start_4
    invoke-static {v6, v5}, Lcom/android/systemui/usb/UsbPermissionActivity;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 179
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_4
    goto :goto_3

    .line 177
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 160
    :catch_0
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 177
    :goto_2
    if-eqz v5, :cond_5

    :try_start_6
    invoke-static {v6, v5}, Lcom/android/systemui/usb/UsbPermissionActivity;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 177
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v5

    .line 178
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "UsbPermissionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v2    # "numActivities":I
    .end local v3    # "i":I
    :cond_7
    return v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 279
    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    if-eqz p2, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 272
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->finish()V

    .line 276
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 76
    const-string v1, "accessory"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 77
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    .line 78
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    .line 79
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 84
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 88
    nop

    .line 90
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "appName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 93
    .local v5, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iput-object v4, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 94
    const-string v6, "UsbPermissionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mPackageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mUid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v6, :cond_0

    .line 96
    const v6, 0x7f1105d4

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v3

    iget-object v10, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 97
    invoke-virtual {v10}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    .line 96
    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 98
    new-instance v6, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v9, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v6, p0, v9}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_0

    .line 100
    :cond_0
    const v6, 0x7f1105de

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v3

    iget-object v10, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 101
    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    .line 100
    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 102
    new-instance v6, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v9, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v6, p0, v9}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    iput-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 104
    :goto_0
    const v6, 0x104000a

    invoke-virtual {p0, v6}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 105
    const/high16 v6, 0x1040000

    invoke-virtual {p0, v6}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 106
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 107
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    const/16 v9, 0x81

    invoke-virtual {v1, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 113
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0, v9, v6}, Lcom/android/systemui/usb/UsbPermissionActivity;->canBeDefault(Landroid/hardware/usb/UsbDevice;Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 114
    invoke-direct {p0, v9, v6}, Lcom/android/systemui/usb/UsbPermissionActivity;->canBeDefault(Landroid/hardware/usb/UsbAccessory;Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 116
    :cond_2
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/android/systemui/usb/UsbPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 118
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x1090032

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 119
    iget-object v10, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v11, 0x10201a7

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 120
    iget-object v10, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v10, :cond_3

    .line 121
    iget-object v10, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v11, 0x7f11011d

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 122
    invoke-virtual {v3}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    .line 121
    invoke-virtual {p0, v11, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 124
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v11, 0x7f11011e

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 125
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    .line 124
    invoke-virtual {p0, v11, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iget-object v3, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v7, 0x10201fc

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    .line 131
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    goto :goto_2

    .line 133
    :catch_0
    move-exception v3

    .line 136
    :goto_2
    const-string/jumbo v3, "\u6295\u5c4f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 137
    iput-boolean v8, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->finish()V

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->setupAlert()V

    .line 142
    return-void

    .line 85
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    :catch_1
    move-exception v2

    .line 86
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "UsbPermissionActivity"

    const-string/jumbo v4, "unable to look up package name"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->finish()V

    .line 88
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 231
    const-string/jumbo v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 232
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    .line 235
    .local v1, "service":Landroid/hardware/usb/IUsbManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v3, :cond_0

    .line 238
    const-string v3, "device"

    iget-object v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    iget-boolean v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v1, v3, v4}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 241
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iget v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 243
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v3}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 247
    .end local v3    # "userId":I
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v3, :cond_1

    .line 248
    const-string v3, "accessory"

    iget-object v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    iget-boolean v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v3, :cond_1

    .line 250
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v1, v3, v4}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 251
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    iget v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 253
    .restart local v3    # "userId":I
    iget-object v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v5, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v3}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    .line 257
    .end local v3    # "userId":I
    :cond_1
    const-string v3, "permission"

    iget-boolean v4, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v3

    .line 262
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "UsbPermissionActivity"

    const-string v5, "IUsbService connection failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 259
    :catch_1
    move-exception v3

    .line 260
    .local v3, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "UsbPermissionActivity"

    const-string v5, "PendingIntent was cancelled"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v3    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    nop

    .line 265
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v3, :cond_2

    .line 266
    iget-object v3, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v3}, Lcom/android/systemui/usb/UsbPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    :cond_2
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 269
    return-void
.end method
